.class Landroid/view/VolumePanel$BrightnessController;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessController"
.end annotation


# instance fields
.field private final mAutomaticAvailable:Z

.field private final mContext:Landroid/content/Context;

.field private final mControl:Landroid/view/ToggleSlider;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mPower:Landroid/os/IPowerManager;

.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method public constructor <init>(Landroid/view/VolumePanel;Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/ToggleSlider;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "icon"
    .parameter "control"

    .prologue
    .line 1440
    iput-object p1, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1441
    iput-object p2, p0, Landroid/view/VolumePanel$BrightnessController;->mContext:Landroid/content/Context;

    .line 1442
    iput-object p3, p0, Landroid/view/VolumePanel$BrightnessController;->mIcon:Landroid/widget/ImageView;

    .line 1443
    iput-object p4, p0, Landroid/view/VolumePanel$BrightnessController;->mControl:Landroid/view/ToggleSlider;

    .line 1445
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/VolumePanel$BrightnessController;->mAutomaticAvailable:Z

    .line 1447
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/VolumePanel$BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 1449
    invoke-virtual {p4, p0}, Landroid/view/ToggleSlider;->setOnChangedListener(Landroid/view/ToggleSlider$Listener;)V

    .line 1450
    return-void
.end method

.method static synthetic access$1500(Landroid/view/VolumePanel$BrightnessController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1431
    iget-object v0, p0, Landroid/view/VolumePanel$BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setBrightness(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 1515
    :try_start_0
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrightnessController brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v0, p0, Landroid/view/VolumePanel$BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    :goto_0
    return-void

    .line 1517
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1509
    iget-object v0, p0, Landroid/view/VolumePanel$BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1511
    return-void
.end method


# virtual methods
.method public onChanged(Landroid/view/ToggleSlider;ZZI)V
    .locals 4
    .parameter "view"
    .parameter "tracking"
    .parameter "automatic"
    .parameter "value"

    .prologue
    .line 1485
    invoke-static {}, Landroid/view/VolumePanel;->access$900()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1486
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrightnessController onChanged tracking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " automatic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_0
    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Landroid/view/VolumePanel$BrightnessController;->setMode(I)V

    .line 1490
    iget-object v1, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->initBrightButton()V
    invoke-static {v1}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;)V

    .line 1491
    if-nez p3, :cond_1

    .line 1492
    iget-object v1, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mScreenBrightnessMinimum:I
    invoke-static {v1}, Landroid/view/VolumePanel;->access$1400(Landroid/view/VolumePanel;)I

    move-result v1

    add-int v0, p4, v1

    .line 1493
    .local v0, val:I
    invoke-direct {p0, v0}, Landroid/view/VolumePanel$BrightnessController;->setBrightness(I)V

    .line 1494
    iget-object v1, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->updateBrightnessFrac(I)V
    invoke-static {v1, v0}, Landroid/view/VolumePanel;->access$1200(Landroid/view/VolumePanel;I)V

    .line 1495
    if-nez p2, :cond_1

    .line 1496
    new-instance v1, Landroid/view/VolumePanel$BrightnessController$1;

    invoke-direct {v1, p0, v0}, Landroid/view/VolumePanel$BrightnessController$1;-><init>(Landroid/view/VolumePanel$BrightnessController;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1505
    .end local v0           #val:I
    :cond_1
    iget-object v1, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->resetTimeout()V
    invoke-static {v1}, Landroid/view/VolumePanel;->access$300(Landroid/view/VolumePanel;)V

    .line 1506
    return-void

    .line 1488
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInit(Landroid/view/ToggleSlider;)V
    .locals 7
    .parameter "control"

    .prologue
    const/4 v4, 0x0

    .line 1454
    invoke-static {}, Landroid/view/VolumePanel;->access$900()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1455
    const-string v5, "VolumePanel"

    const-string v6, "BrightnessController onInit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_0
    iget-boolean v5, p0, Landroid/view/VolumePanel$BrightnessController;->mAutomaticAvailable:Z

    if-eqz v5, :cond_2

    .line 1460
    :try_start_0
    iget-object v5, p0, Landroid/view/VolumePanel$BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1465
    .local v0, automatic:I
    :goto_0
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/ToggleSlider;->setChecked(Z)V

    .line 1469
    .end local v0           #automatic:I
    :goto_1
    iget-object v4, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->initBrightButton()V
    invoke-static {v4}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;)V

    .line 1470
    iget-object v4, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    iget-object v5, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->getBrightness()I
    invoke-static {v5}, Landroid/view/VolumePanel;->access$1100(Landroid/view/VolumePanel;)I

    move-result v5

    #calls: Landroid/view/VolumePanel;->updateBrightnessFrac(I)V
    invoke-static {v4, v5}, Landroid/view/VolumePanel;->access$1200(Landroid/view/VolumePanel;I)V

    .line 1474
    :try_start_1
    iget-object v4, p0, Landroid/view/VolumePanel$BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 1480
    .local v3, value:I
    :goto_2
    iget-object v4, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mScreenBrightnessMaximum:I
    invoke-static {v4}, Landroid/view/VolumePanel;->access$1300(Landroid/view/VolumePanel;)I

    move-result v4

    iget-object v5, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mScreenBrightnessMinimum:I
    invoke-static {v5}, Landroid/view/VolumePanel;->access$1400(Landroid/view/VolumePanel;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/ToggleSlider;->setMax(I)V

    .line 1481
    iget-object v4, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mScreenBrightnessMinimum:I
    invoke-static {v4}, Landroid/view/VolumePanel;->access$1400(Landroid/view/VolumePanel;)I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p1, v4}, Landroid/view/ToggleSlider;->setValue(I)V

    .line 1482
    return-void

    .line 1462
    .end local v3           #value:I
    :catch_0
    move-exception v2

    .line 1463
    .local v2, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #automatic:I
    goto :goto_0

    .line 1467
    .end local v0           #automatic:I
    .end local v2           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/ToggleSlider;->setChecked(Z)V

    goto :goto_1

    .line 1476
    :catch_1
    move-exception v1

    .line 1477
    .local v1, ex:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/view/VolumePanel$BrightnessController;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mScreenBrightnessMaximum:I
    invoke-static {v4}, Landroid/view/VolumePanel;->access$1300(Landroid/view/VolumePanel;)I

    move-result v3

    .restart local v3       #value:I
    goto :goto_2
.end method
