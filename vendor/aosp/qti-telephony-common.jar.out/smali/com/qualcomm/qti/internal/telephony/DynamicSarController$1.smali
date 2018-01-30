.class Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;
.super Ljava/lang/Object;
.source "DynamicSarController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DynamicSarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 60
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    float-to-int v0, v2

    .line 66
    .local v0, "distance":I
    if-lez v0, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 72
    .local v1, "sarState":I
    :goto_0
    const-string/jumbo v2, "DynamicSarController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSensorChanged distance ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , sarState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->-get0(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/DynamicSarController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->-get0(Lcom/qualcomm/qti/internal/telephony/DynamicSarController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void

    .line 70
    .end local v1    # "sarState":I
    :cond_0
    const/4 v1, 0x2

    .restart local v1    # "sarState":I
    goto :goto_0
.end method
