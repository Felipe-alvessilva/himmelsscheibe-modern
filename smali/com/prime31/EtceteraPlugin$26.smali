.class Lcom/prime31/EtceteraPlugin$26;
.super Ljava/lang/Object;
.source "EtceteraPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/EtceteraPlugin;->inlineWebViewClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/EtceteraPlugin;


# direct methods
.method constructor <init>(Lcom/prime31/EtceteraPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/EtceteraPlugin$26;->this$0:Lcom/prime31/EtceteraPlugin;

    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1193
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$26;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v1}, Lcom/prime31/EtceteraPlugin;->access$11(Lcom/prime31/EtceteraPlugin;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1196
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$26;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v1}, Lcom/prime31/EtceteraPlugin;->access$11(Lcom/prime31/EtceteraPlugin;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1197
    .local v0, "parentView":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$26;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v1}, Lcom/prime31/EtceteraPlugin;->access$11(Lcom/prime31/EtceteraPlugin;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1200
    :cond_0
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$26;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v1}, Lcom/prime31/EtceteraPlugin;->access$11(Lcom/prime31/EtceteraPlugin;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1201
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$26;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v1, v2}, Lcom/prime31/EtceteraPlugin;->access$10(Lcom/prime31/EtceteraPlugin;Landroid/widget/RelativeLayout;)V

    .line 1202
    iget-object v1, p0, Lcom/prime31/EtceteraPlugin$26;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v1, v2}, Lcom/prime31/EtceteraPlugin;->access$8(Lcom/prime31/EtceteraPlugin;Landroid/webkit/WebView;)V

    .line 1203
    return-void
.end method
