.class Lcom/prime31/EtceteraPlugin$22;
.super Ljava/lang/Object;
.source "EtceteraPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/EtceteraPlugin;->askForReviewNow(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/EtceteraPlugin;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$prefs:Landroid/content/SharedPreferences;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prime31/EtceteraPlugin;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/prime31/EtceteraPlugin$22;->this$0:Lcom/prime31/EtceteraPlugin;

    iput-object p2, p0, Lcom/prime31/EtceteraPlugin$22;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/prime31/EtceteraPlugin$22;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/prime31/EtceteraPlugin$22;->val$prefs:Landroid/content/SharedPreferences;

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/prime31/EtceteraPlugin$22;)Lcom/prime31/EtceteraPlugin;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/prime31/EtceteraPlugin$22;->this$0:Lcom/prime31/EtceteraPlugin;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0xa

    const/4 v13, 0x5

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 987
    new-instance v3, Landroid/app/Dialog;

    iget-object v10, p0, Lcom/prime31/EtceteraPlugin$22;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v10}, Lcom/prime31/EtceteraPlugin;->access$0(Lcom/prime31/EtceteraPlugin;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 988
    .local v3, "dialog":Landroid/app/Dialog;
    iget-object v10, p0, Lcom/prime31/EtceteraPlugin$22;->val$title:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 989
    invoke-virtual {v3, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 990
    invoke-virtual {v3, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 992
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/prime31/EtceteraPlugin$22;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v10}, Lcom/prime31/EtceteraPlugin;->access$0(Lcom/prime31/EtceteraPlugin;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 993
    .local v4, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v13, v11, v13, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 994
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 996
    new-instance v7, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/prime31/EtceteraPlugin$22;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v10}, Lcom/prime31/EtceteraPlugin;->access$0(Lcom/prime31/EtceteraPlugin;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 997
    .local v7, "tv":Landroid/widget/TextView;
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 998
    iget-object v10, p0, Lcom/prime31/EtceteraPlugin$22;->val$message:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    const/16 v10, 0x1f4

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setWidth(I)V

    .line 1000
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1003
    new-instance v8, Landroid/view/View;

    iget-object v10, p0, Lcom/prime31/EtceteraPlugin$22;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v10}, Lcom/prime31/EtceteraPlugin;->access$0(Lcom/prime31/EtceteraPlugin;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1004
    .local v8, "v":Landroid/view/View;
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1007
    new-instance v0, Landroid/widget/Button;

    iget-object v10, p0, Lcom/prime31/EtceteraPlugin$22;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v10}, Lcom/prime31/EtceteraPlugin;->access$0(Lcom/prime31/EtceteraPlugin;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1008
    .local v0, "b1":Landroid/widget/Button;
    const-string v10, "Yes, rate it!"

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    new-instance v10, Lcom/prime31/EtceteraPlugin$22$1;

    iget-object v11, p0, Lcom/prime31/EtceteraPlugin$22;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {v10, p0, v11, v3}, Lcom/prime31/EtceteraPlugin$22$1;-><init>(Lcom/prime31/EtceteraPlugin$22;Landroid/content/SharedPreferences;Landroid/app/Dialog;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1047
    new-instance v1, Landroid/widget/Button;

    iget-object v10, p0, Lcom/prime31/EtceteraPlugin$22;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v10}, Lcom/prime31/EtceteraPlugin;->access$0(Lcom/prime31/EtceteraPlugin;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1048
    .local v1, "b2":Landroid/widget/Button;
    const-string v10, "Remind me later"

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    new-instance v10, Lcom/prime31/EtceteraPlugin$22$2;

    invoke-direct {v10, p0, v3}, Lcom/prime31/EtceteraPlugin$22$2;-><init>(Lcom/prime31/EtceteraPlugin$22;Landroid/app/Dialog;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1059
    new-instance v2, Landroid/widget/Button;

    iget-object v10, p0, Lcom/prime31/EtceteraPlugin$22;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v10}, Lcom/prime31/EtceteraPlugin;->access$0(Lcom/prime31/EtceteraPlugin;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1060
    .local v2, "b3":Landroid/widget/Button;
    const-string v10, "Don\'t ask again"

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    new-instance v10, Lcom/prime31/EtceteraPlugin$22$3;

    iget-object v11, p0, Lcom/prime31/EtceteraPlugin$22;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {v10, p0, v11, v3}, Lcom/prime31/EtceteraPlugin$22$3;-><init>(Lcom/prime31/EtceteraPlugin$22;Landroid/content/SharedPreferences;Landroid/app/Dialog;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1075
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1076
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1079
    iget-object v10, p0, Lcom/prime31/EtceteraPlugin$22;->this$0:Lcom/prime31/EtceteraPlugin;

    invoke-static {v10}, Lcom/prime31/EtceteraPlugin;->access$0(Lcom/prime31/EtceteraPlugin;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 1080
    .local v6, "screenWidth":I
    int-to-float v10, v6

    const v11, 0x3f4ccccd    # 0.8f

    mul-float v9, v10, v11

    .line 1082
    .local v9, "width":F
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_0

    .line 1083
    const/high16 v9, 0x43e10000    # 450.0f

    .line 1085
    :cond_0
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1086
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1087
    float-to-int v10, v9

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1089
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1090
    return-void
.end method
