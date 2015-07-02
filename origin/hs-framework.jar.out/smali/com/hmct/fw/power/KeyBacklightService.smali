.class public Lcom/hmct/fw/power/KeyBacklightService;
.super Ljava/lang/Object;
.source "KeyBacklightService.java"

# interfaces
.implements Lcom/hmct/common/power/IKeyBackLightAdjust;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hmct/fw/power/KeyBacklightService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HALL_ENABLED:Ljava/lang/String; = "enabled"

.field private static final HALL_STATE:Ljava/lang/String; = "state"

.field private static LIGHT_SENSOR_OPEN_VALUE:I = 0x0

.field private static final LIGHT_SENSOR_RATE:I = 0xf4240

.field private static final MSG_BACKLIGHT_TIMEOUT:I = 0x3

.field private static final MSG_USER_ACTIVITY_CHANGED:I = 0x2

.field private static final MSG_WAKE_LOCK_CHANGED:I = 0x1

.field private static final TAG_LS:Ljava/lang/String; = "ButtonBacklight"

.field private static final USER_ACTIVITY_BUTTON_BRIGHT:I = 0x4

.field private static final WAKEFULNESS_AWAKE:I = 0x1

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static isUseAutoBacklightAdjust:Z

.field private static final mDebugLightSensor:Z


# instance fields
.field private capCovered:Z

.field private capEnabled:Z

.field private isScreenOn:Z

.field private mAutoBrightessEnabled:Z

.field private mBacklightTimeout:J

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mCallback:Lcom/hmct/common/power/IKeyBackLightCallback;

.field private mContext:Landroid/content/Context;

.field private mDirty:I

.field private final mHallSensorIntent:Landroid/content/Intent;

.field private final mHallStateReceiver:Landroid/content/BroadcastReceiver;

.field private mHasLightSensor:Z

.field private mKeybordlightModeSetting:I

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnabled:Z

.field private mLightSensorKeyLightOn:Z

.field private mLightsService:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private mProximityPositive:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/hmct/fw/power/KeyBacklightService$SettingsObserver;

.field private mUserActivitySummary:I

.field private mWakeLockSummary:I

.field private myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hmct/fw/power/KeyBacklightService;->isUseAutoBacklightAdjust:Z

    .line 59
    const/16 v0, 0xa

    sput v0, Lcom/hmct/fw/power/KeyBacklightService;->LIGHT_SENSOR_OPEN_VALUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/hmct/common/power/IKeyBackLightCallback;Landroid/hardware/SensorManager;)V
    .locals 6
    .parameter "mContext"
    .parameter "mLightsService"
    .parameter "mCallback"
    .parameter "mSensorManager"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mProximityPositive:Z

    .line 49
    iput-boolean v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mHasLightSensor:Z

    .line 50
    iput-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mAutoBrightessEnabled:Z

    .line 51
    iput-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorEnabled:Z

    .line 52
    iput-boolean v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorKeyLightOn:Z

    .line 63
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLock:Ljava/lang/Object;

    .line 64
    iput-boolean v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->isScreenOn:Z

    .line 73
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.CAP_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mHallSensorIntent:Landroid/content/Intent;

    .line 76
    iput-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->capEnabled:Z

    .line 77
    iput-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->capCovered:Z

    .line 302
    new-instance v4, Lcom/hmct/fw/power/KeyBacklightService$1;

    invoke-direct {v4, p0}, Lcom/hmct/fw/power/KeyBacklightService$1;-><init>(Lcom/hmct/fw/power/KeyBacklightService;)V

    iput-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 329
    new-instance v4, Lcom/hmct/fw/power/KeyBacklightService$2;

    invoke-direct {v4, p0}, Lcom/hmct/fw/power/KeyBacklightService$2;-><init>(Lcom/hmct/fw/power/KeyBacklightService;)V

    iput-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->myHandler:Landroid/os/Handler;

    .line 343
    new-instance v4, Lcom/hmct/fw/power/KeyBacklightService$3;

    invoke-direct {v4, p0}, Lcom/hmct/fw/power/KeyBacklightService$3;-><init>(Lcom/hmct/fw/power/KeyBacklightService;)V

    iput-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mHallStateReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mContext:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mCallback:Lcom/hmct/common/power/IKeyBackLightCallback;

    .line 84
    iput-object p2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightsService:Lcom/android/server/LightsService;

    .line 85
    iput-object p4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CAP_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mHallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    new-instance v4, Lcom/hmct/fw/power/KeyBacklightService$SettingsObserver;

    iget-object v5, p0, Lcom/hmct/fw/power/KeyBacklightService;->myHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/hmct/fw/power/KeyBacklightService$SettingsObserver;-><init>(Lcom/hmct/fw/power/KeyBacklightService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mSettingsObserver:Lcom/hmct/fw/power/KeyBacklightService$SettingsObserver;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 95
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x5

    invoke-virtual {p4, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensor:Landroid/hardware/Sensor;

    .line 96
    if-eqz p4, :cond_0

    iget-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mHasLightSensor:Z

    .line 97
    const-string v2, "key_backlight_enable"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mSettingsObserver:Lcom/hmct/fw/power/KeyBacklightService$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 100
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iput-object v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 101
    invoke-direct {p0}, Lcom/hmct/fw/power/KeyBacklightService;->updateSettingsLocked()V

    .line 103
    return-void

    :cond_0
    move v2, v3

    .line 96
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/hmct/fw/power/KeyBacklightService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hmct/fw/power/KeyBacklightService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/hmct/fw/power/KeyBacklightService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/hmct/fw/power/KeyBacklightService;->LIGHT_SENSOR_OPEN_VALUE:I

    return v0
.end method

.method static synthetic access$300(Lcom/hmct/fw/power/KeyBacklightService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorKeyLightOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/hmct/fw/power/KeyBacklightService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorKeyLightOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hmct/fw/power/KeyBacklightService;)Lcom/hmct/common/power/IKeyBackLightCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->mCallback:Lcom/hmct/common/power/IKeyBackLightCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hmct/fw/power/KeyBacklightService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/hmct/fw/power/KeyBacklightService;->updateWakeLockSummaryLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/hmct/fw/power/KeyBacklightService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/hmct/fw/power/KeyBacklightService;->updateUserActivitySummaryLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/hmct/fw/power/KeyBacklightService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/hmct/fw/power/KeyBacklightService;->capEnabled:Z

    return p1
.end method

.method static synthetic access$802(Lcom/hmct/fw/power/KeyBacklightService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/hmct/fw/power/KeyBacklightService;->capCovered:Z

    return p1
.end method

.method private enableLightSensorLocked(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 281
    iget-boolean v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mHasLightSensor:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mAutoBrightessEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mCallback:Lcom/hmct/common/power/IKeyBackLightCallback;

    invoke-interface {v2}, Lcom/hmct/common/power/IKeyBackLightCallback;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 282
    :cond_0
    const/4 p1, 0x0

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorEnabled:Z

    if-eq v2, p1, :cond_2

    .line 285
    iput-boolean p1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorEnabled:Z

    .line 287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 289
    .local v0, identity:J
    if-eqz p1, :cond_3

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensor:Landroid/hardware/Sensor;

    const v5, 0xf4240

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 292
    const-string v2, "ButtonBacklight"

    const-string v3, "registerListener  TYPE_LIGHT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 300
    .end local v0           #identity:J
    :cond_2
    return-void

    .line 294
    .restart local v0       #identity:J
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private handleSettingsChangedLocked()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "ButtonBacklight"

    const-string v1, "handleSettingsChangedLocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/hmct/fw/power/KeyBacklightService;->updateSettingsLocked()V

    .line 121
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->mCallback:Lcom/hmct/common/power/IKeyBackLightCallback;

    invoke-interface {v0}, Lcom/hmct/common/power/IKeyBackLightCallback;->onStateChanged()V

    .line 122
    return-void
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSettingsLocked()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 125
    iget-object v5, p0, Lcom/hmct/fw/power/KeyBacklightService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 126
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "key_backlight_enable"

    invoke-static {v2, v5, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lcom/hmct/fw/power/KeyBacklightService;->mKeybordlightModeSetting:I

    .line 129
    const-string v5, "ButtonBacklight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSettingsLocked, setting database change, mKeybordlightModeSetting = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/hmct/fw/power/KeyBacklightService;->mKeybordlightModeSetting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v5, "2"

    const-string v6, "ro.factorytest"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ro.bootmode"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "charger"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    :cond_0
    iput v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mKeybordlightModeSetting:I

    .line 136
    :cond_1
    iget v5, p0, Lcom/hmct/fw/power/KeyBacklightService;->mKeybordlightModeSetting:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move v1, v3

    .line 137
    .local v1, newEnabled:Z
    :goto_0
    iget-boolean v5, p0, Lcom/hmct/fw/power/KeyBacklightService;->mAutoBrightessEnabled:Z

    if-eq v5, v1, :cond_2

    .line 138
    iput-boolean v1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mAutoBrightessEnabled:Z

    .line 139
    iget-boolean v5, p0, Lcom/hmct/fw/power/KeyBacklightService;->mAutoBrightessEnabled:Z

    invoke-direct {p0, v5}, Lcom/hmct/fw/power/KeyBacklightService;->enableLightSensorLocked(Z)V

    .line 142
    :cond_2
    const-string v5, "auto_backlight_enable"

    invoke-static {v2, v5, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 145
    .local v0, newBacklightEnabled:I
    if-ne v0, v3, :cond_4

    :goto_1
    sput-boolean v3, Lcom/hmct/fw/power/KeyBacklightService;->isUseAutoBacklightAdjust:Z

    .line 147
    return-void

    .end local v0           #newBacklightEnabled:I
    .end local v1           #newEnabled:Z
    :cond_3
    move v1, v4

    .line 136
    goto :goto_0

    .restart local v0       #newBacklightEnabled:I
    .restart local v1       #newEnabled:Z
    :cond_4
    move v3, v4

    .line 145
    goto :goto_1
.end method

.method private updateUserActivitySummaryLocked()I
    .locals 5

    .prologue
    .line 190
    iget v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->mUserActivitySummary:I

    .line 191
    .local v0, mUserActivitySummaryResult:I
    invoke-direct {p0}, Lcom/hmct/fw/power/KeyBacklightService;->shouldUseProximitySensorLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mProximityPositive:Z

    if-eqz v3, :cond_1

    .line 192
    and-int/lit8 v0, v0, -0x5

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    iget v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mKeybordlightModeSetting:I

    if-nez v3, :cond_2

    .line 195
    and-int/lit8 v0, v0, -0x5

    goto :goto_0

    .line 196
    :cond_2
    const/4 v3, 0x1

    iget v4, p0, Lcom/hmct/fw/power/KeyBacklightService;->mKeybordlightModeSetting:I

    if-ne v3, v4, :cond_7

    .line 197
    iget-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->capEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->capCovered:Z

    if-nez v3, :cond_6

    .line 198
    :cond_3
    sget-boolean v3, Lcom/hmct/fw/power/KeyBacklightService;->isUseAutoBacklightAdjust:Z

    if-eqz v3, :cond_4

    .line 199
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 201
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 205
    .local v1, now:J
    iget-wide v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mBacklightTimeout:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_5

    .line 206
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 208
    :cond_5
    and-int/lit8 v0, v0, -0x5

    goto :goto_0

    .line 212
    .end local v1           #now:J
    :cond_6
    and-int/lit8 v0, v0, -0x5

    goto :goto_0

    .line 215
    :cond_7
    iget-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorEnabled:Z

    if-eqz v3, :cond_0

    .line 216
    iget-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorKeyLightOn:Z

    if-eqz v3, :cond_a

    .line 217
    iget-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->capEnabled:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/hmct/fw/power/KeyBacklightService;->capCovered:Z

    if-nez v3, :cond_9

    .line 218
    :cond_8
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 220
    :cond_9
    and-int/lit8 v0, v0, -0x5

    goto :goto_0

    .line 223
    :cond_a
    and-int/lit8 v0, v0, -0x5

    goto :goto_0
.end method

.method private updateWakeLockSummaryLocked()I
    .locals 3

    .prologue
    .line 155
    iget v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->mWakeLockSummary:I

    .line 156
    .local v0, mWakeLockSummaryResult:I
    invoke-direct {p0}, Lcom/hmct/fw/power/KeyBacklightService;->shouldUseProximitySensorLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mProximityPositive:Z

    if-eqz v1, :cond_1

    .line 157
    and-int/lit8 v0, v0, -0x9

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Lcom/hmct/fw/power/KeyBacklightService;->mKeybordlightModeSetting:I

    if-ne v1, v2, :cond_4

    .line 160
    iget-boolean v1, p0, Lcom/hmct/fw/power/KeyBacklightService;->capEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/hmct/fw/power/KeyBacklightService;->capCovered:Z

    if-nez v1, :cond_3

    .line 161
    :cond_2
    sget-boolean v1, Lcom/hmct/fw/power/KeyBacklightService;->isUseAutoBacklightAdjust:Z

    if-eqz v1, :cond_0

    .line 162
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 165
    :cond_3
    and-int/lit8 v0, v0, -0x9

    goto :goto_0

    .line 167
    :cond_4
    iget v1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mKeybordlightModeSetting:I

    if-nez v1, :cond_5

    .line 168
    and-int/lit8 v0, v0, -0x9

    goto :goto_0

    .line 170
    :cond_5
    iget-boolean v1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 171
    iget-boolean v1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mLightSensorKeyLightOn:Z

    if-eqz v1, :cond_8

    .line 172
    iget-boolean v1, p0, Lcom/hmct/fw/power/KeyBacklightService;->capEnabled:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/hmct/fw/power/KeyBacklightService;->capCovered:Z

    if-nez v1, :cond_7

    .line 173
    :cond_6
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 175
    :cond_7
    and-int/lit8 v0, v0, -0x9

    goto :goto_0

    .line 178
    :cond_8
    and-int/lit8 v0, v0, -0x9

    goto :goto_0
.end method


# virtual methods
.method public setCloseBacklightTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 271
    iput-wide p1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mBacklightTimeout:J

    .line 272
    return-void
.end method

.method public setProximityPositive(Z)V
    .locals 0
    .parameter "isPositive"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mProximityPositive:Z

    .line 268
    return-void
.end method

.method public setUserActivitySummary(I)V
    .locals 2
    .parameter "mUserActivitySummary"

    .prologue
    .line 262
    iput p1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mUserActivitySummary:I

    .line 263
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    return-void
.end method

.method public setWakeLockSummary(I)V
    .locals 2
    .parameter "mWakeLockSummary"

    .prologue
    .line 257
    iput p1, p0, Lcom/hmct/fw/power/KeyBacklightService;->mWakeLockSummary:I

    .line 258
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    return-void
.end method

.method public updateBacklightStateLocked(III)V
    .locals 1
    .parameter "newScreenState"
    .parameter "mWakefulness"
    .parameter "screenBrightness"

    .prologue
    .line 235
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 236
    invoke-direct {p0}, Lcom/hmct/fw/power/KeyBacklightService;->updateWakeLockSummaryLocked()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hmct/fw/power/KeyBacklightService;->updateUserActivitySummaryLocked()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, p3}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 254
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0
.end method
