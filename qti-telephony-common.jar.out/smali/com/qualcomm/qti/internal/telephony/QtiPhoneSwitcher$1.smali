.class Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    const-string/jumbo v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSimStateIntentReceiver: phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-wrap3(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 100
    if-eq v1, v6, :cond_0

    .line 101
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)[Ljava/lang/String;

    move-result-object v3

    aput-object v2, v3, v1

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-wrap1(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-wrap2(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)I

    move-result v3

    if-lez v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-virtual {v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resendDataAllowed(I)V

    .line 93
    .end local v1    # "phoneId":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method
