# Himmelsscheibe — Patch Notes

App original: **Lernabenteuer Deutsch — Das Geheimnis der Himmelsscheibe**  
Desenvolvedor: Goethe-Institut  
Pacote: `de.goethe.lernabenteuer`  
Versão: 1.9.3 (versionCode 100193)

## Objetivo
Modernizar o APK original (targetSdk 22, 2015) para rodar em Android moderno (testado no Samsung Galaxy S23 Ultra, Android 14).

---

## Patch 1 — SDK e Manifest (`apktool.yml`, `AndroidManifest.xml`)

- `minSdkVersion` 9 → 19
- `targetSdkVersion` 22 → 28
- `android:exported="true"` na activity launcher (obrigatório para targetSdk ≥ 31)
- `android:exported="false"` em todas as outras activities, services e receivers
- `android:requestLegacyExternalStorage="true"` — mantém acesso a storage no Android 10
- `android:networkSecurityConfig` — permite HTTP (Unity antigo pode precisar)
- `WRITE/READ_EXTERNAL_STORAGE` com `maxSdkVersion="28"` — limpa permissão obsoleta
- Removida permissão `CHECK_LICENSE` (Google Play DRM antigo)
- `installLocation` preferExternal → internalOnly

Arquivo novo: `res/xml/network_security_config.xml`

---

## Patch 2 — Notification.Builder (`smali/com/unity3d/plugin/downloader/b/i.smali`)

**Problema:** `Notification.setLatestEventInfo()` foi removido na API 23. Com targetSdk > 22 o Android lança `RuntimeException`.

**Correção:** Substituído por `Notification.Builder` nas duas ocorrências do método:
- `a(I)V` — notificação de status de download
- `a(Lcom/unity3d/plugin/downloader/a/b;)V` — notificação de progresso

---

## Patch 3 — License Check bypass (`smali/com/unity3d/plugin/downloader/c/j.smali`)

**Problema:** `checkAccess()` tenta `bindService` ao Google Play para verificar licença. Sem a Play Store disponível, a thread principal trava indefinidamente, tornando o dispositivo inoperante.

**Correção:** Método `a(Lcom/unity3d/plugin/downloader/c/n;)V` substituído para chamar `callback.a()` diretamente (equivalente ao caminho "cached license response" que já existia no código original).

O método original foi preservado renomeado como `a_original_disabled` para referência.

---

## Instalação

### Dependências
- Java 21 (Android Studio JBR): `C:\Program Files\Android\Android Studio\jbr`
- Android SDK Build Tools 36.1.0
- apktool 2.11.1: `C:\Users\Felip\ApkProjects\apktool.jar`
- Keystore de debug: `C:\Users\Felip\ApkProjects\debug.keystore`

### Build
```bat
cd C:\Users\Felip\ApkProjects
build.bat
```

### Instalar no dispositivo
```bat
# Com um único device conectado:
install.bat

# Com múltiplos devices (ex: emulador + celular):
adb -s <SERIAL> install -r output\himmelsscheibe-signed.apk
```

### OBB (dados do jogo — ~116MB, obrigatório)
```bat
adb -s <SERIAL> shell "mkdir -p /sdcard/Android/obb/de.goethe.lernabenteuer"
adb -s <SERIAL> push main.100193.de.goethe.lernabenteuer.obb /sdcard/Android/obb/de.goethe.lernabenteuer/
```

O arquivo OBB não está no repositório. Baixar em: https://apkfab.com/adventure-german/de.goethe.lernabenteuer

---

## Próximas fases (planejado)

- [ ] `targetSdk` 28 → 31 + Notification Channels
- [ ] Support Library → AndroidX (1.048 arquivos Smali)
- [ ] Scoped Storage (substituir WRITE_EXTERNAL_STORAGE)
- [ ] ARM64 nativo (exige projeto Unity original)
