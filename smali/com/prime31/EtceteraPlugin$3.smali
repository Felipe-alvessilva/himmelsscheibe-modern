.class Lcom/prime31/EtceteraPlugin$3;
.super Ljava/lang/Object;
.source "EtceteraPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/EtceteraPlugin;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/EtceteraPlugin;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$negativeButton:Ljava/lang/String;

.field private final synthetic val$positiveButton:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/EtceteraPlugin$3;->this$0:Lcom/prime31/EtceteraPlugin;

    iput-object p2, p0, Lcom/prime31/EtceteraPlugin$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/prime31/EtceteraPlugin$3;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/prime31/EtceteraPlugin$3;->val$positiveButton:Ljava/lang/String;

    iput-object p5, p0, Lcom/prime31/EtceteraPlugin$3;->val$negativeButton:Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/prime31/EtceteraPlugin$3;)Lcom/prime31/EtceteraPlugin;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin$3;->this$0:Lcom/prime31/EtceteraPlugin;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 234
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$3;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v1}, Lcom/prime31/EtceteraPlugin;->access$0(Lcom/prime31/EtceteraPlugin;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$3;->val$positiveButton:Ljava/lang/String;

    new-instance v2, Lcom/prime31/EtceteraPlugin$3$1;

    iget-object v3, p0, Lcom/prime31/EtceteraPlugin$3;->val$positiveButton:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/prime31/EtceteraPlugin$3$1;-><init>(Lcom/prime31/EtceteraPlugin$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$3;->val$negativeButton:Ljava/lang/String;

    new-instance v2, Lcom/prime31/EtceteraPlugin$3$2;

    iget-object v3, p0, Lcom/prime31/EtceteraPlugin$3;->val$negativeButton:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/prime31/EtceteraPlugin$3$2;-><init>(Lcom/prime31/EtceteraPlugin$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/prime31/EtceteraPlugin$3$3;

    invoke-direct {v1, p0}, Lcom/prime31/EtceteraPlugin$3$3;-><init>(Lcom/prime31/EtceteraPlugin$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 252
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 254
    return-void
.end method
