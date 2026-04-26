.class Lcom/prime31/EtceteraPlugin$22$2;
.super Ljava/lang/Object;
.source "EtceteraPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/EtceteraPlugin$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prime31/EtceteraPlugin$22;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/prime31/EtceteraPlugin$22;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/EtceteraPlugin$22$2;->this$1:Lcom/prime31/EtceteraPlugin$22;

    iput-object p2, p0, Lcom/prime31/EtceteraPlugin$22$2;->val$dialog:Landroid/app/Dialog;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin$22$2;->this$1:Lcom/prime31/EtceteraPlugin$22;

    invoke-static {v0}, Lcom/prime31/EtceteraPlugin$22;->access$0(Lcom/prime31/EtceteraPlugin$22;)Lcom/prime31/EtceteraPlugin;

    move-result-object v0

    const-string v1, "EtceteraAndroidManager"

    const-string v2, "askForReviewRemindMeLater"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/prime31/EtceteraPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin$22$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1055
    return-void
.end method
