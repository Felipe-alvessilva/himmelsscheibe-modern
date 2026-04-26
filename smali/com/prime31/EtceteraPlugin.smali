.class public Lcom/prime31/EtceteraPlugin;
.super Ljava/lang/Object;
.source "EtceteraPlugin.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prime31/EtceteraPlugin$P31MediaScanner;
    }
.end annotation


# static fields
.field private static _instance:Lcom/prime31/EtceteraPlugin;


# instance fields
.field private final DONT_SHOW_AGAIN_KEY:Ljava/lang/String;

.field private final FIRST_LAUNCH_DATE_KEY:Ljava/lang/String;

.field private final LAST_TIME_ASKED:Ljava/lang/String;

.field private final LAUNCH_COUNT_KEY:Ljava/lang/String;

.field public _activity:Landroid/app/Activity;

.field private _desiredFileName:Ljava/lang/String;

.field private _desiredHeight:I

.field private _desiredWidth:I

.field private _dialog:Landroid/app/ProgressDialog;

.field private _tts:Landroid/speech/tts/TextToSpeech;

.field private _unityPlayerActivityField:Ljava/lang/reflect/Field;

.field private _unityPlayerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private _unitySendMessageMethod:Ljava/lang/reflect/Method;

.field private _utteranceId:I

.field private _webView:Landroid/webkit/WebView;

.field private _webViewLayout:Landroid/widget/RelativeLayout;

.field public isAmazonAppStore:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v1, p0, Lcom/prime31/EtceteraPlugin;->isAmazonAppStore:Z

    .line 72
    iput v1, p0, Lcom/prime31/EtceteraPlugin;->_utteranceId:I

    .line 75
    iput v2, p0, Lcom/prime31/EtceteraPlugin;->_desiredWidth:I

    .line 76
    iput v2, p0, Lcom/prime31/EtceteraPlugin;->_desiredHeight:I

    .line 77
    const-string v1, "image.jpg"

    iput-object v1, p0, Lcom/prime31/EtceteraPlugin;->_desiredFileName:Ljava/lang/String;

    .line 923
    const-string v1, "RTADontShowAgain"

    iput-object v1, p0, Lcom/prime31/EtceteraPlugin;->DONT_SHOW_AGAIN_KEY:Ljava/lang/String;

    .line 924
    const-string v1, "RTALaunchCount"

    iput-object v1, p0, Lcom/prime31/EtceteraPlugin;->LAUNCH_COUNT_KEY:Ljava/lang/String;

    .line 925
    const-string v1, "RTAFirstLaunchDate"

    iput-object v1, p0, Lcom/prime31/EtceteraPlugin;->FIRST_LAUNCH_DATE_KEY:Ljava/lang/String;

    .line 926
    const-string v1, "RTALastTimeAsked"

    iput-object v1, p0, Lcom/prime31/EtceteraPlugin;->LAST_TIME_ASKED:Ljava/lang/String;

    .line 99
    :try_start_0
    const-string v1, "com.unity3d.player.UnityPlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/prime31/EtceteraPlugin;->_unityPlayerClass:Ljava/lang/Class;

    .line 100
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin;->_unityPlayerClass:Ljava/lang/Class;

    const-string v2, "currentActivity"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/prime31/EtceteraPlugin;->_unityPlayerActivityField:Ljava/lang/reflect/Field;

    .line 101
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin;->_unityPlayerClass:Ljava/lang/Class;

    const-string v2, "UnitySendMessage"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/prime31/EtceteraPlugin;->_unitySendMessageMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not find UnityPlayer class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not find currentActivity field: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unkown exception occurred locating UnityPlayer.currentActivity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/prime31/EtceteraPlugin;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/prime31/EtceteraPlugin;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/prime31/EtceteraPlugin;->_dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$10(Lcom/prime31/EtceteraPlugin;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/prime31/EtceteraPlugin;->_webViewLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$11(Lcom/prime31/EtceteraPlugin;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_webViewLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/prime31/EtceteraPlugin;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/prime31/EtceteraPlugin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_desiredFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/prime31/EtceteraPlugin;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->tts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/prime31/EtceteraPlugin;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_tts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$6(Lcom/prime31/EtceteraPlugin;Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/prime31/EtceteraPlugin;->_tts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method static synthetic access$7(Lcom/prime31/EtceteraPlugin;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getTtsUtteranceIdHashMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/prime31/EtceteraPlugin;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/prime31/EtceteraPlugin;->_webView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$9(Lcom/prime31/EtceteraPlugin;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 537
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 539
    :cond_0
    const/4 v1, 0x0

    .line 540
    .local v1, "source":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 543
    .local v0, "destination":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 544
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 545
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    if-eqz v1, :cond_1

    .line 550
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 552
    :cond_1
    if-eqz v0, :cond_2

    .line 553
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 555
    :cond_2
    return-void

    .line 548
    :catchall_0
    move-exception v2

    .line 549
    if-eqz v1, :cond_3

    .line 550
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 552
    :cond_3
    if-eqz v0, :cond_4

    .line 553
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 554
    :cond_4
    throw v2
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin;->_unityPlayerActivityField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin;->_unityPlayerActivityField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/prime31/EtceteraPlugin;->_unityPlayerClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error getting currentActivity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin;->_activity:Landroid/app/Activity;

    goto :goto_0
.end method

.method private getTtsUtteranceIdHashMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "utteranceId"

    iget v2, p0, Lcom/prime31/EtceteraPlugin;->_utteranceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget v1, p0, Lcom/prime31/EtceteraPlugin;->_utteranceId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/prime31/EtceteraPlugin;->_utteranceId:I

    .line 182
    return-object v0
.end method

.method public static instance()Lcom/prime31/EtceteraPlugin;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/prime31/EtceteraPlugin;->_instance:Lcom/prime31/EtceteraPlugin;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/prime31/EtceteraPlugin;

    invoke-direct {v0}, Lcom/prime31/EtceteraPlugin;-><init>()V

    sput-object v0, Lcom/prime31/EtceteraPlugin;->_instance:Lcom/prime31/EtceteraPlugin;

    .line 90
    :cond_0
    sget-object v0, Lcom/prime31/EtceteraPlugin;->_instance:Lcom/prime31/EtceteraPlugin;

    return-object v0
.end method

.method private resizeImageAtPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-static/range {p1 .. p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 562
    .local v1, "bitmapOrg":Landroid/graphics/Bitmap;
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "found image: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    if-nez v1, :cond_0

    .line 567
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    .local v14, "source":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    .local v8, "dest":Ljava/io/File;
    :try_start_0
    invoke-static {v14, v8}, Lcom/prime31/EtceteraPlugin;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v8    # "dest":Ljava/io/File;
    .end local v14    # "source":Ljava/io/File;
    :cond_0
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "resizing image at path: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 583
    .local v4, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 585
    .local v5, "height":I
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "raw image size: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " x "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget v2, p0, Lcom/prime31/EtceteraPlugin;->_desiredWidth:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/prime31/EtceteraPlugin;->_desiredHeight:I

    if-nez v2, :cond_1

    .line 589
    iput v4, p0, Lcom/prime31/EtceteraPlugin;->_desiredWidth:I

    .line 590
    iput v5, p0, Lcom/prime31/EtceteraPlugin;->_desiredHeight:I

    .line 594
    :cond_1
    iget v2, p0, Lcom/prime31/EtceteraPlugin;->_desiredWidth:I

    int-to-float v2, v2

    int-to-float v3, v4

    div-float v13, v2, v3

    .line 595
    .local v13, "scaleWidth":F
    iget v2, p0, Lcom/prime31/EtceteraPlugin;->_desiredHeight:I

    int-to-float v2, v2

    int-to-float v3, v5

    div-float v12, v2, v3

    .line 598
    .local v12, "scaleHeight":F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 601
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 602
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 604
    .local v11, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 605
    .local v10, "out":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x46

    invoke-virtual {v11, v2, v3, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 606
    return-void

    .line 573
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v11    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "scaleHeight":F
    .end local v13    # "scaleWidth":F
    .restart local v8    # "dest":Ljava/io/File;
    .restart local v14    # "source":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 575
    .local v9, "e":Ljava/io/IOException;
    const-string v2, "Prime31"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "failed to perform fallback copy of file: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
.end method

.method private tts()Landroid/speech/tts/TextToSpeech;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/prime31/EtceteraPlugin;->_tts:Landroid/speech/tts/TextToSpeech;

    .line 170
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_tts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method


# virtual methods
.method public UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "go"    # Ljava/lang/String;
    .param p2, "m"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin;->_unitySendMessageMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin;->_unitySendMessageMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 162
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not find UnitySendMessage method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not find UnitySendMessage method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not find UnitySendMessage method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnitySendMessage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public askForReview(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "launchesUntilPrompt"    # I
    .param p2, "hoursUntilFirstPrompt"    # I
    .param p3, "hoursBetweenPrompts"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "RTA"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 932
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "RTADontShowAgain"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 973
    :goto_0
    return-void

    .line 935
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 938
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "RTALaunchCount"

    const-wide/16 v10, 0x0

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long v6, v8, v10

    .line 939
    .local v6, "launchCount":J
    const-string v8, "RTALaunchCount"

    invoke-interface {v2, v8, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 942
    const-string v8, "RTAFirstLaunchDate"

    const-wide/16 v10, 0x0

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 943
    .local v3, "firstLaunchDate":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 945
    const-string v8, "Prime31"

    const-string v9, "first launch date not set in prefs. setting it now"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 947
    const-string v8, "RTAFirstLaunchDate"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v2, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 951
    :cond_1
    int-to-long v8, p1

    cmp-long v8, v6, v8

    if-ltz v8, :cond_3

    .line 953
    const-string v8, "Prime31"

    const-string v9, "launch count > launchesUntilPrompt. checking to see if first launch was greater than hoursUntilPrompt"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    mul-int/lit8 v12, p2, 0x3c

    mul-int/lit8 v12, v12, 0x3c

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    add-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    .line 958
    const-string v8, "Prime31"

    const-string v9, "hoursUntilFirstPrompt have expired so we are clear to proceed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const-string v8, "RTALastTimeAsked"

    const-wide/16 v10, 0x0

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 963
    .local v4, "lastPromptDate":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    mul-int/lit8 v12, p3, 0x3c

    mul-int/lit8 v12, v12, 0x3c

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    add-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    .line 965
    :cond_2
    const-string v8, "Prime31"

    const-string v9, "lastPromptDate is either 0 or enough time has elapsed to prompt again"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-string v8, "RTALastTimeAsked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v2, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 967
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/prime31/EtceteraPlugin;->askForReviewNow(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .end local v4    # "lastPromptDate":Ljava/lang/Long;
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public askForReviewNow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 979
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "RTA"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 980
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "RTADontShowAgain"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 983
    :cond_0
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/prime31/EtceteraPlugin$22;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/prime31/EtceteraPlugin$22;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public cameraPhotoTaken(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 720
    if-nez p1, :cond_0

    .line 722
    const-string v3, "EtceteraAndroidManager"

    const-string v4, "photoChooserCancelled"

    const-string v5, ""

    invoke-virtual {p0, v3, v4, v5}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_0
    return-void

    .line 726
    :cond_0
    const-string v3, "Prime31"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "going to resize the file at path: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/prime31/EtceteraPlugin;->_desiredFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "destPath":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/prime31/EtceteraPlugin;->resizeImageAtPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v3, "EtceteraAndroidManager"

    const-string v4, "photoChooserSucceeded"

    invoke-virtual {p0, v3, v4, v1}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v2

    .line 738
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Prime31"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file could not be found to resize it: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v3, "EtceteraAndroidManager"

    const-string v4, "photoChooserCancelled"

    const-string v5, ""

    invoke-virtual {p0, v3, v4, v5}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getScreenDensity()I
    .locals 2

    .prologue
    .line 188
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 189
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 191
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    return v1
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$7;

    invoke-direct {v1, p0}, Lcom/prime31/EtceteraPlugin$7;-><init>(Lcom/prime31/EtceteraPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method public initTTS()V
    .locals 2

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$15;

    invoke-direct {v1, p0}, Lcom/prime31/EtceteraPlugin$15;-><init>(Lcom/prime31/EtceteraPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 809
    return-void
.end method

.method public inlineWebViewClose()V
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_webViewLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 1205
    :goto_0
    return-void

    .line 1189
    :cond_0
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$26;

    invoke-direct {v1, p0}, Lcom/prime31/EtceteraPlugin$26;-><init>(Lcom/prime31/EtceteraPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public inlineWebViewSetFrame(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1245
    :goto_0
    return-void

    .line 1229
    :cond_0
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/prime31/EtceteraPlugin$28;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/prime31/EtceteraPlugin$28;-><init>(Lcom/prime31/EtceteraPlugin;IIII)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public inlineWebViewSetUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1221
    :goto_0
    return-void

    .line 1213
    :cond_0
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$27;

    invoke-direct {v1, p0, p1}, Lcom/prime31/EtceteraPlugin$27;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public inlineWebViewShow(Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin;->_webViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/prime31/EtceteraPlugin;->inlineWebViewClose()V

    .line 1155
    :cond_0
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v0, Lcom/prime31/EtceteraPlugin$25;

    move-object v1, p0

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/prime31/EtceteraPlugin$25;-><init>(Lcom/prime31/EtceteraPlugin;IIIILjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1181
    return-void
.end method

.method public onInit(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 907
    if-nez p1, :cond_0

    .line 908
    const-string v0, "EtceteraAndroidManager"

    const-string v1, "ttsInitialized"

    const-string v2, "1"

    invoke-virtual {p0, v0, v1, v2}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :goto_0
    return-void

    .line 910
    :cond_0
    const-string v0, "EtceteraAndroidManager"

    const-string v1, "ttsInitialized"

    const-string v2, "0"

    invoke-virtual {p0, v0, v1, v2}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 917
    const-string v0, "EtceteraAndroidManager"

    const-string v1, "ttsUtteranceCompleted"

    invoke-virtual {p0, v0, v1, p1}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public photoAlbumItemChosen(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 695
    const-string v3, "EtceteraAndroidManager"

    const-string v4, "albumChooserCancelled"

    const-string v5, ""

    invoke-virtual {p0, v3, v4, v5}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :goto_0
    return-void

    .line 699
    :cond_0
    const-string v3, "Prime31"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "going to resize the file at path: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/prime31/EtceteraPlugin;->_desiredFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "destPath":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/prime31/EtceteraPlugin;->resizeImageAtPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v3, "EtceteraAndroidManager"

    const-string v4, "albumChooserSucceeded"

    invoke-virtual {p0, v3, v4, v1}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v2

    .line 711
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Prime31"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file could not be found to resize it: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v3, "EtceteraAndroidManager"

    const-string v4, "albumChooserCancelled"

    const-string v5, ""

    invoke-virtual {p0, v3, v4, v5}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playMovie(Ljava/lang/String;IZIZ)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bgColor"    # I
    .param p3, "showControls"    # Z
    .param p4, "scalingMode"    # I
    .param p5, "closeOnTouch"    # Z

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v0, Lcom/prime31/EtceteraPlugin$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/prime31/EtceteraPlugin$1;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;ZIIZ)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public playSilence(JI)V
    .locals 3
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$19;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/prime31/EtceteraPlugin$19;-><init>(Lcom/prime31/EtceteraPlugin;JI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 870
    return-void
.end method

.method public promptForPictureFromAlbum(IILjava/lang/String;)V
    .locals 2
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 518
    iput p1, p0, Lcom/prime31/EtceteraPlugin;->_desiredWidth:I

    .line 519
    iput p2, p0, Lcom/prime31/EtceteraPlugin;->_desiredHeight:I

    .line 520
    iput-object p3, p0, Lcom/prime31/EtceteraPlugin;->_desiredFileName:Ljava/lang/String;

    .line 522
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$14;

    invoke-direct {v1, p0}, Lcom/prime31/EtceteraPlugin$14;-><init>(Lcom/prime31/EtceteraPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 531
    return-void
.end method

.method public promptToTakePhoto(IILjava/lang/String;)V
    .locals 2
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 467
    iput p1, p0, Lcom/prime31/EtceteraPlugin;->_desiredWidth:I

    .line 468
    iput p2, p0, Lcom/prime31/EtceteraPlugin;->_desiredHeight:I

    .line 469
    iput-object p3, p0, Lcom/prime31/EtceteraPlugin;->_desiredFileName:Ljava/lang/String;

    .line 471
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$12;

    invoke-direct {v1, p0}, Lcom/prime31/EtceteraPlugin$12;-><init>(Lcom/prime31/EtceteraPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method

.method public promptToTakeVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 485
    const-string v1, "3gp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "substring":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 498
    .end local v0    # "substring":Ljava/lang/String;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/prime31/EtceteraPlugin;->_desiredFileName:Ljava/lang/String;

    .line 500
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/prime31/EtceteraPlugin$13;

    invoke-direct {v2, p0}, Lcom/prime31/EtceteraPlugin$13;-><init>(Lcom/prime31/EtceteraPlugin;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 513
    return-void

    .line 495
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public resetAskForReview()V
    .locals 5

    .prologue
    .line 1097
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "RTA"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1098
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1099
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1101
    return-void
.end method

.method public saveImageToGallery(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 646
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 647
    .local v11, "v":Landroid/content/ContentValues;
    const-string v12, "title"

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v12, "date_added"

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 651
    const-string v12, "datetaken"

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 652
    const-string v12, "date_modified"

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 653
    const-string v12, "mime_type"

    const-string v13, "image/png"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 660
    .local v7, "parent":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 661
    .local v8, "path":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 663
    .local v6, "name":Ljava/lang/String;
    const-string v12, "bucket_id"

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    const-string v12, "bucket_display_name"

    invoke-virtual {v11, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v12, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 666
    const-string v12, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-direct/range {p0 .. p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 669
    .local v2, "c":Landroid/content/ContentResolver;
    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v12, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 672
    .local v10, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/prime31/EtceteraPlugin$P31MediaScanner;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/prime31/EtceteraPlugin$P31MediaScanner;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/io/File;)V

    .line 673
    .local v3, "client":Lcom/prime31/EtceteraPlugin$P31MediaScanner;
    new-instance v9, Landroid/media/MediaScannerConnection;

    invoke-direct/range {p0 .. p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v9, v12, v3}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 674
    .local v9, "scanner":Landroid/media/MediaScannerConnection;
    invoke-virtual {v3, v9}, Lcom/prime31/EtceteraPlugin$P31MediaScanner;->setScanner(Landroid/media/MediaScannerConnection;)V

    .line 675
    invoke-virtual {v9}, Landroid/media/MediaScannerConnection;->connect()V

    .line 677
    const-string v12, "Prime31"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " saved to gallery with uri: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    const/4 v12, 0x1

    .end local v2    # "c":Landroid/content/ContentResolver;
    .end local v3    # "client":Lcom/prime31/EtceteraPlugin$P31MediaScanner;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "parent":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "scanner":Landroid/media/MediaScannerConnection;
    .end local v10    # "uri":Landroid/net/Uri;
    :goto_0
    return v12

    .line 679
    :catch_0
    move-exception v4

    .line 681
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "Prime31"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "saveImageToGallery failed: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public scaleImageAtPath(Ljava/lang/String;F)V
    .locals 11
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 611
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 614
    .local v0, "bitmapOrg":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 616
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "could not find image at path: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 621
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 624
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 627
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 628
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 630
    .local v10, "resizedBitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 633
    .local v8, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .local v9, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {v10, v1, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 636
    :catch_0
    move-exception v7

    .line 638
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v1, "Prime31"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "error saving image to disk: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setPitch(F)V
    .locals 2
    .param p1, "pitch"    # F

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$20;

    invoke-direct {v1, p0, p1}, Lcom/prime31/EtceteraPlugin$20;-><init>(Lcom/prime31/EtceteraPlugin;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 885
    return-void
.end method

.method public setSpeechRate(F)V
    .locals 2
    .param p1, "rate"    # F

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$21;

    invoke-direct {v1, p0, p1}, Lcom/prime31/EtceteraPlugin$21;-><init>(Lcom/prime31/EtceteraPlugin;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 901
    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "positiveButton"    # Ljava/lang/String;
    .param p4, "negativeButton"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/prime31/EtceteraPlugin$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/prime31/EtceteraPlugin$3;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public showAlertPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "promptHint"    # Ljava/lang/String;
    .param p4, "promptText"    # Ljava/lang/String;
    .param p5, "positiveButton"    # Ljava/lang/String;
    .param p6, "negativeButton"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v0, Lcom/prime31/EtceteraPlugin$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/prime31/EtceteraPlugin$4;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method public showAlertPromptWithTwoFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "promptHintOne"    # Ljava/lang/String;
    .param p4, "promptTextOne"    # Ljava/lang/String;
    .param p5, "promptHintTwo"    # Ljava/lang/String;
    .param p6, "promptTextTwo"    # Ljava/lang/String;
    .param p7, "positiveButton"    # Ljava/lang/String;
    .param p8, "negativeButton"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v0, Lcom/prime31/EtceteraPlugin$5;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/prime31/EtceteraPlugin$5;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method public showCustomWebView(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "disableTitle"    # Z
    .param p3, "disableBackButton"    # Z

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$9;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/prime31/EtceteraPlugin$9;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method

.method public showEmailComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "toAddress"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "isHTML"    # Z
    .param p5, "attachmentFilePath"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v0, Lcom/prime31/EtceteraPlugin$10;

    move-object v1, p0

    move v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/prime31/EtceteraPlugin$10;-><init>(Lcom/prime31/EtceteraPlugin;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 440
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/prime31/EtceteraPlugin$6;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public showSMSComposer(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$11;

    invoke-direct {v1, p0, p1}, Lcom/prime31/EtceteraPlugin$11;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "shortDuration"    # Z

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/prime31/EtceteraPlugin$2;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public showWebView(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$8;

    invoke-direct {v1, p0, p1}, Lcom/prime31/EtceteraPlugin$8;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method public speak(Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "queueMode"    # I

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/prime31/EtceteraPlugin$17;-><init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 841
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$18;

    invoke-direct {v1, p0}, Lcom/prime31/EtceteraPlugin$18;-><init>(Lcom/prime31/EtceteraPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 855
    return-void
.end method

.method public teardownTTS()V
    .locals 2

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$16;

    invoke-direct {v1, p0}, Lcom/prime31/EtceteraPlugin$16;-><init>(Lcom/prime31/EtceteraPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method public urbanAirshipActivityStarted()V
    .locals 2

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$23;

    invoke-direct {v1, p0}, Lcom/prime31/EtceteraPlugin$23;-><init>(Lcom/prime31/EtceteraPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1114
    return-void
.end method

.method public urbanAirshipActivityStopped()V
    .locals 2

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/prime31/EtceteraPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/EtceteraPlugin$24;

    invoke-direct {v1, p0}, Lcom/prime31/EtceteraPlugin$24;-><init>(Lcom/prime31/EtceteraPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1126
    return-void
.end method

.method public urbanAirshipDisablePush()V
    .locals 0

    .prologue
    .line 1137
    invoke-static {}, Lcom/urbanairship/push/PushManager;->disablePush()V

    .line 1138
    return-void
.end method

.method public urbanAirshipEnablePush()V
    .locals 0

    .prologue
    .line 1131
    invoke-static {}, Lcom/urbanairship/push/PushManager;->enablePush()V

    .line 1132
    return-void
.end method

.method public urbanAirshipGetAPID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1143
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    .line 1144
    .local v0, "prefs":Lcom/urbanairship/push/PushPreferences;
    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public videoTaken(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 746
    if-nez p1, :cond_0

    .line 748
    const-string v0, "EtceteraAndroidManager"

    const-string v1, "videoRecordingCancelled"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :goto_0
    return-void

    .line 752
    :cond_0
    const-string v0, "EtceteraAndroidManager"

    const-string v1, "videoRecordingSucceeded"

    invoke-virtual {p0, v0, v1, p1}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
