.class Lcom/hmct/fw/power/KeyBacklightService$1;
.super Ljava/lang/Object;
.source "KeyBacklightService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hmct/fw/power/KeyBacklightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hmct/fw/power/KeyBacklightService;


# direct methods
.method constructor <init>(Lcom/hmct/fw/power/KeyBacklightService;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/hmct/fw/power/KeyBacklightService$1;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 326
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 309
    .local v0, newLight:Z
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {}, Lcom/hmct/fw/power/KeyBacklightService;->access$200()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 310
    const/4 v0, 0x1

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/hmct/fw/power/KeyBacklightService$1;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    #getter for: Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorKeyLightOn:Z
    invoke-static {v1}, Lcom/hmct/fw/power/KeyBacklightService;->access$300(Lcom/hmct/fw/power/KeyBacklightService;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/hmct/fw/power/KeyBacklightService$1;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    #setter for: Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorKeyLightOn:Z
    invoke-static {v1, v0}, Lcom/hmct/fw/power/KeyBacklightService;->access$302(Lcom/hmct/fw/power/KeyBacklightService;Z)Z

    .line 316
    iget-object v1, p0, Lcom/hmct/fw/power/KeyBacklightService$1;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    #getter for: Lcom/hmct/fw/power/KeyBacklightService;->mCallback:Lcom/hmct/common/power/IKeyBackLightCallback;
    invoke-static {v1}, Lcom/hmct/fw/power/KeyBacklightService;->access$400(Lcom/hmct/fw/power/KeyBacklightService;)Lcom/hmct/common/power/IKeyBackLightCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/hmct/common/power/IKeyBackLightCallback;->onStateChanged()V

    .line 321
    :cond_0
    return-void

    .line 312
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
