.class public Lcom/android/internal/policy/impl/keyguard/BubblePoolView;
.super Landroid/widget/FrameLayout;
.source "BubblePoolView.java"


# instance fields
.field private batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

.field private eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

.field private mActionStart:Ljava/lang/Runnable;

.field private mBaseStartX:I

.field private mBaseStartY:I

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBubbleDrawable:Landroid/graphics/drawable/Drawable;

.field private mBubbleDurationMax:I

.field private mBubbleDurationMin:I

.field private mBubbleEndAlphaMax:F

.field private mBubbleEndAlphaMin:F

.field private mBubbleLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/BubbleView;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleMax:I

.field private mBubbleMin:I

.field private mBubbleStartAlphaMax:F

.field private mBubbleStartAlphaMin:F

.field private mBubbleStartDelayMax:I

.field private mBubbleStartDelayMin:I

.field private mBubbleStartXRangeMax:D

.field private mBubbleStartYRangeMax:D

.field private mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig",
            "<*>;"
        }
    .end annotation
.end field

.field private mConfigType:I

.field private mHandler:Landroid/os/Handler;

.field private mRunNumber:I

.field private mSpacingTime:I

.field private mlevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolRandomConfig;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolRandomConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    .line 40
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    .line 42
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    .line 49
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mActionStart:Ljava/lang/Runnable;

    .line 332
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->init()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolRandomConfig;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolRandomConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    .line 40
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    .line 42
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    .line 49
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mActionStart:Ljava/lang/Runnable;

    .line 332
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->init()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolRandomConfig;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolRandomConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    .line 40
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    .line 42
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    .line 49
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mActionStart:Ljava/lang/Runnable;

    .line 332
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->init()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBaseStartX:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBaseStartY:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->startBubble(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->startBubble(IIZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;)Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;Lcom/android/internal/policy/impl/keyguard/BubbleView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->removeBubble(Lcom/android/internal/policy/impl/keyguard/BubbleView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mlevel:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mlevel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getBubble()Lcom/android/internal/policy/impl/keyguard/BubbleView;
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, ret:Lcom/android/internal/policy/impl/keyguard/BubbleView;
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubbleView;

    .end local v0           #ret:Lcom/android/internal/policy/impl/keyguard/BubbleView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/BubbleView;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 294
    .restart local v0       #ret:Lcom/android/internal/policy/impl/keyguard/BubbleView;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->addView(Landroid/view/View;)V

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->initBubble()V

    .line 113
    const v0, 0x1020296

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    .line 114
    const v0, 0x1020297

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    .line 115
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mHandler:Landroid/os/Handler;

    .line 136
    return-void
.end method

.method private initBubble()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->initConfig()V

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    :cond_0
    return-void
.end method

.method private initBubbleAnimatorForRandom(Lcom/android/internal/policy/impl/keyguard/BubbleView;I)Landroid/animation/Animator;
    .locals 21
    .parameter "bubble"
    .parameter "loop"

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBaseStartX:I

    int-to-double v5, v2

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartXRangeMax:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v9, v13

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v19, 0x3fe0

    cmpl-double v2, v13, v19

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-double v13, v2

    mul-double/2addr v9, v13

    add-double/2addr v5, v9

    double-to-float v0, v5

    move/from16 v17, v0

    .line 260
    .local v17, startX:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBaseStartY:I

    int-to-double v5, v2

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartYRangeMax:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v9, v13

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v19, 0x3fe0

    cmpl-double v2, v13, v19

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    int-to-double v13, v2

    mul-double/2addr v9, v13

    add-double/2addr v5, v9

    double-to-float v0, v5

    move/from16 v18, v0

    .line 263
    .local v18, startY:F
    new-instance v3, Landroid/graphics/PointF;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 264
    .local v3, startPoint:Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 266
    .local v4, endPoint:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDurationMin:I

    int-to-double v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDurationMax:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDurationMin:I

    sub-int/2addr v2, v9

    int-to-double v9, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double/2addr v5, v9

    double-to-int v15, v5

    .line 269
    .local v15, duration:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartDelayMin:I

    int-to-double v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartDelayMax:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartDelayMin:I

    sub-int/2addr v2, v9

    int-to-double v9, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double/2addr v5, v9

    double-to-long v7, v5

    .line 273
    .local v7, startDelay:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartAlphaMin:F

    float-to-double v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartAlphaMax:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartAlphaMin:F

    sub-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double/2addr v5, v9

    double-to-int v11, v5

    .line 275
    .local v11, startAlpha:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleEndAlphaMin:F

    float-to-double v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleEndAlphaMax:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleEndAlphaMin:F

    sub-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double/2addr v5, v9

    double-to-int v12, v5

    .line 278
    .local v12, endAlpha:I
    int-to-long v5, v15

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;

    move-object/from16 v2, p1

    move/from16 v14, p2

    invoke-virtual/range {v2 .. v14}, Lcom/android/internal/policy/impl/keyguard/BubbleView;->getMoveAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;JJFFIILcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)Landroid/animation/Animator;

    move-result-object v16

    .line 281
    .local v16, moveAnimation:Landroid/animation/Animator;
    return-object v16

    .line 258
    .end local v3           #startPoint:Landroid/graphics/PointF;
    .end local v4           #endPoint:Landroid/graphics/PointF;
    .end local v7           #startDelay:J
    .end local v11           #startAlpha:I
    .end local v12           #endAlpha:I
    .end local v15           #duration:I
    .end local v16           #moveAnimation:Landroid/animation/Animator;
    .end local v17           #startX:F
    .end local v18           #startY:F
    :cond_0
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 260
    .restart local v17       #startX:F
    :cond_1
    const/4 v2, -0x1

    goto/16 :goto_1
.end method

.method private initConfig()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;

    .line 149
    .local v0, c:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;,"Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig<*>;"
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getBubbleMax()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleMax:I

    .line 150
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getBubbleMin()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleMin:I

    .line 152
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getSpacingTime()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mSpacingTime:I

    .line 154
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getStartXRangeMax()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartXRangeMax:D

    .line 155
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getStartYRangeMax()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartYRangeMax:D

    .line 157
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getBubbleDurationMin()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDurationMin:I

    .line 158
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getBubbleDurationMax()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleDurationMax:I

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getBubbleStartDelayMin()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartDelayMin:I

    .line 161
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getBubbleStartDelayMax()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartDelayMax:I

    .line 163
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getBubbleStartAlphaMin()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartAlphaMin:F

    .line 164
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getBubbleStartAlphaMax()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleStartAlphaMax:F

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getBubbleEndAlphaMin()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleEndAlphaMin:F

    .line 167
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getBubbleEndAlphaMax()F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleEndAlphaMax:F

    .line 169
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getConfigType()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfigType:I

    .line 170
    return-void
.end method

.method private removeBubble(Lcom/android/internal/policy/impl/keyguard/BubbleView;)V
    .locals 1
    .parameter "bubble"

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->removeView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method private startBubble(IIZ)V
    .locals 13
    .parameter "baseStartX"
    .parameter "baseStartY"
    .parameter "isFirst"

    .prologue
    .line 207
    if-eqz p3, :cond_0

    .line 208
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mRunNumber:I

    .line 210
    :cond_0
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mRunNumber:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mRunNumber:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mRunNumber:I

    .line 212
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mSpacingTime:I

    .line 214
    .local v0, Delayed:I
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 215
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBaseStartX:I

    .line 216
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBaseStartY:I

    .line 218
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 219
    .local v1, animationSet:Landroid/animation/AnimatorSet;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleMin:I

    int-to-double v7, v7

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleMax:I

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleMin:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v3, v7

    .line 223
    .local v3, bubbleCount:I
    const/4 v5, 0x0

    .local v5, loop:I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 224
    const/4 v6, 0x0

    .line 226
    .local v6, moveAnimation:Landroid/animation/Animator;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->getBubble()Lcom/android/internal/policy/impl/keyguard/BubbleView;

    move-result-object v2

    .line 227
    .local v2, bubble:Lcom/android/internal/policy/impl/keyguard/BubbleView;
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfigType:I

    .line 230
    invoke-direct {p0, v2, v5}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->initBubbleAnimatorForRandom(Lcom/android/internal/policy/impl/keyguard/BubbleView;I)Landroid/animation/Animator;

    move-result-object v6

    .line 234
    if-eqz v6, :cond_2

    .line 235
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$3;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;Lcom/android/internal/policy/impl/keyguard/BubbleView;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 246
    .end local v2           #bubble:Lcom/android/internal/policy/impl/keyguard/BubbleView;
    .end local v6           #moveAnimation:Landroid/animation/Animator;
    :cond_3
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 247
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 250
    .end local v1           #animationSet:Landroid/animation/AnimatorSet;
    .end local v3           #bubbleCount:I
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v5           #loop:I
    :cond_4
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mRunNumber:I

    if-gtz v7, :cond_5

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mRunNumber:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 251
    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mActionStart:Ljava/lang/Runnable;

    int-to-long v8, v0

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    :cond_6
    return-void
.end method

.method private startBubble(Z)V
    .locals 3
    .parameter "isFirst"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 198
    .local v0, startX:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->getHeight()I

    move-result v2

    add-int/lit8 v1, v2, 0x14

    .line 199
    .local v1, startY:I
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->startBubble(IIZ)V

    .line 200
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 321
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/widget/AdapterView;

    if-nez v1, :cond_2

    .line 322
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 323
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->unbindDrawables(Landroid/view/View;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 327
    .end local v0           #i:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolRandomConfig;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolRandomConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 175
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->startBubble()V

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, batteryChangFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->stopBubble()V

    .line 189
    invoke-direct {p0, p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->unbindDrawables(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method public setConfig(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;,"Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig<*>;"
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mConfig:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;

    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->initBubble()V

    .line 103
    return-void
.end method

.method public startBubble()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->startBubble(Z)V

    .line 194
    return-void
.end method

.method public startBubble(II)V
    .locals 1
    .parameter "baseStartX"
    .parameter "baseStartY"

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->startBubble(IIZ)V

    .line 204
    return-void
.end method

.method public stopBubble()V
    .locals 5

    .prologue
    .line 301
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mActionStart:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, isStaticList:Z
    if-nez v2, :cond_0

    .line 304
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 305
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/BubbleView;

    .line 306
    .local v0, bubble:Lcom/android/internal/policy/impl/keyguard/BubbleView;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubbleView;->stopMove()V

    .line 307
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->removeBubble(Lcom/android/internal/policy/impl/keyguard/BubbleView;)V

    goto :goto_0

    .line 310
    .end local v0           #bubble:Lcom/android/internal/policy/impl/keyguard/BubbleView;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/BubbleView;

    .line 311
    .restart local v0       #bubble:Lcom/android/internal/policy/impl/keyguard/BubbleView;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/BubbleView;->stopMove()V

    goto :goto_1

    .line 315
    .end local v0           #bubble:Lcom/android/internal/policy/impl/keyguard/BubbleView;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
