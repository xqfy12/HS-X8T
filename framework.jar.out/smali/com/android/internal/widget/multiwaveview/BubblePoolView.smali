.class public Lcom/android/internal/widget/multiwaveview/BubblePoolView;
.super Landroid/widget/FrameLayout;
.source "BubblePoolView.java"


# instance fields
.field private mActionStart:Ljava/lang/Runnable;

.field private mBaseStartX:I

.field private mBaseStartY:I

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
            "Lcom/android/internal/widget/multiwaveview/BubbleView;",
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

.field private mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/multiwaveview/BubblePoolConfig",
            "<*>;"
        }
    .end annotation
.end field

.field private mConfigType:I

.field private mRunNumber:I

.field private mSpacingTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubblePoolRandomConfig;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolRandomConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;-><init>(Lcom/android/internal/widget/multiwaveview/BubblePoolView;)V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mActionStart:Ljava/lang/Runnable;

    .line 80
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubblePoolRandomConfig;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolRandomConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;-><init>(Lcom/android/internal/widget/multiwaveview/BubblePoolView;)V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mActionStart:Ljava/lang/Runnable;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->init()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubblePoolRandomConfig;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolRandomConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;-><init>(Lcom/android/internal/widget/multiwaveview/BubblePoolView;)V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mActionStart:Ljava/lang/Runnable;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/multiwaveview/BubblePoolView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBaseStartX:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/BubblePoolView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBaseStartY:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/BubblePoolView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->startBubble(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/multiwaveview/BubblePoolView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->startBubble(IIZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/multiwaveview/BubblePoolView;Lcom/android/internal/widget/multiwaveview/BubbleView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->removeBubble(Lcom/android/internal/widget/multiwaveview/BubbleView;)V

    return-void
.end method

.method private getBubble()Lcom/android/internal/widget/multiwaveview/BubbleView;
    .locals 3

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, ret:Lcom/android/internal/widget/multiwaveview/BubbleView;
    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubbleView;

    .end local v0           #ret:Lcom/android/internal/widget/multiwaveview/BubbleView;
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/BubbleView;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 260
    .restart local v0       #ret:Lcom/android/internal/widget/multiwaveview/BubbleView;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->addView(Landroid/view/View;)V

    .line 261
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->initBubble()V

    .line 96
    return-void
.end method

.method private initBubble()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->initConfig()V

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    :cond_0
    return-void
.end method

.method private initBubbleAnimatorForRandom(Lcom/android/internal/widget/multiwaveview/BubbleView;I)Landroid/animation/Animator;
    .locals 21
    .parameter "bubble"
    .parameter "loop"

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBaseStartX:I

    int-to-double v5, v2

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartXRangeMax:D

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

    .line 226
    .local v17, startX:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBaseStartY:I

    int-to-double v5, v2

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartYRangeMax:D

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

    .line 229
    .local v18, startY:F
    new-instance v3, Landroid/graphics/PointF;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 230
    .local v3, startPoint:Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 232
    .local v4, endPoint:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDurationMin:I

    int-to-double v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDurationMax:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDurationMin:I

    sub-int/2addr v2, v9

    int-to-double v9, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double/2addr v5, v9

    double-to-int v15, v5

    .line 235
    .local v15, duration:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartDelayMin:I

    int-to-double v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartDelayMax:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartDelayMin:I

    sub-int/2addr v2, v9

    int-to-double v9, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double/2addr v5, v9

    double-to-long v7, v5

    .line 239
    .local v7, startDelay:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartAlphaMin:F

    float-to-double v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartAlphaMax:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartAlphaMin:F

    sub-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double/2addr v5, v9

    double-to-int v11, v5

    .line 241
    .local v11, startAlpha:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleEndAlphaMin:F

    float-to-double v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleEndAlphaMax:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleEndAlphaMin:F

    sub-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v9, v13

    add-double/2addr v5, v9

    double-to-int v12, v5

    .line 244
    .local v12, endAlpha:I
    int-to-long v5, v15

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;

    move-object/from16 v2, p1

    move/from16 v14, p2

    invoke-virtual/range {v2 .. v14}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getMoveAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;JJFFIILcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)Landroid/animation/Animator;

    move-result-object v16

    .line 247
    .local v16, moveAnimation:Landroid/animation/Animator;
    return-object v16

    .line 224
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

    .line 226
    .restart local v17       #startX:F
    :cond_1
    const/4 v2, -0x1

    goto/16 :goto_1
.end method

.method private initConfig()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;

    .line 112
    .local v0, c:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<*>;"
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getBubbleMax()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleMax:I

    .line 113
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getBubbleMin()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleMin:I

    .line 115
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getSpacingTime()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mSpacingTime:I

    .line 117
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getStartXRangeMax()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartXRangeMax:D

    .line 118
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getStartYRangeMax()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartYRangeMax:D

    .line 120
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getBubbleDurationMin()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDurationMin:I

    .line 121
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getBubbleDurationMax()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleDurationMax:I

    .line 123
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getBubbleStartDelayMin()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartDelayMin:I

    .line 124
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getBubbleStartDelayMax()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartDelayMax:I

    .line 126
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getBubbleStartAlphaMin()F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartAlphaMin:F

    .line 127
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getBubbleStartAlphaMax()F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleStartAlphaMax:F

    .line 129
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getBubbleEndAlphaMin()F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleEndAlphaMin:F

    .line 130
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getBubbleEndAlphaMax()F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleEndAlphaMax:F

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getConfigType()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfigType:I

    .line 133
    return-void
.end method

.method private removeBubble(Lcom/android/internal/widget/multiwaveview/BubbleView;)V
    .locals 1
    .parameter "bubble"

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->removeView(Landroid/view/View;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method private startBubble(IIZ)V
    .locals 13
    .parameter "baseStartX"
    .parameter "baseStartY"
    .parameter "isFirst"

    .prologue
    .line 171
    if-eqz p3, :cond_0

    .line 172
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mRunNumber:I

    .line 174
    :cond_0
    iget v7, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mRunNumber:I

    if-lez v7, :cond_1

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mRunNumber:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mRunNumber:I

    .line 176
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mSpacingTime:I

    .line 178
    .local v0, Delayed:I
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 180
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBaseStartX:I

    .line 181
    iput p2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBaseStartY:I

    .line 183
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 184
    .local v1, animationSet:Landroid/animation/AnimatorSet;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget v7, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleMin:I

    int-to-double v7, v7

    iget v9, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleMax:I

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleMin:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v3, v7

    .line 188
    .local v3, bubbleCount:I
    const/4 v5, 0x0

    .local v5, loop:I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 190
    const/4 v6, 0x0

    .line 192
    .local v6, moveAnimation:Landroid/animation/Animator;
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->getBubble()Lcom/android/internal/widget/multiwaveview/BubbleView;

    move-result-object v2

    .line 193
    .local v2, bubble:Lcom/android/internal/widget/multiwaveview/BubbleView;
    iget v7, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfigType:I

    .line 196
    invoke-direct {p0, v2, v5}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->initBubbleAnimatorForRandom(Lcom/android/internal/widget/multiwaveview/BubbleView;I)Landroid/animation/Animator;

    move-result-object v6

    .line 200
    if-eqz v6, :cond_2

    .line 201
    new-instance v7, Lcom/android/internal/widget/multiwaveview/BubblePoolView$2;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/widget/multiwaveview/BubblePoolView$2;-><init>(Lcom/android/internal/widget/multiwaveview/BubblePoolView;Lcom/android/internal/widget/multiwaveview/BubbleView;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 212
    .end local v2           #bubble:Lcom/android/internal/widget/multiwaveview/BubbleView;
    .end local v6           #moveAnimation:Landroid/animation/Animator;
    :cond_3
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 213
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 216
    .end local v1           #animationSet:Landroid/animation/AnimatorSet;
    .end local v3           #bubbleCount:I
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v5           #loop:I
    :cond_4
    iget v7, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mRunNumber:I

    if-gtz v7, :cond_5

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mRunNumber:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 217
    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mActionStart:Ljava/lang/Runnable;

    int-to-long v8, v0

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_6
    return-void
.end method

.method private startBubble(Z)V
    .locals 3
    .parameter "isFirst"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 161
    .local v0, startX:I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->getHeight()I

    move-result v2

    add-int/lit8 v1, v2, 0x14

    .line 162
    .local v1, startY:I
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->startBubble(IIZ)V

    .line 163
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 287
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/widget/AdapterView;

    if-nez v1, :cond_2

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 289
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->unbindDrawables(Landroid/view/View;)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 293
    .end local v0           #i:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/widget/multiwaveview/BubblePoolConfig",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubblePoolRandomConfig;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolRandomConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->startBubble()V

    .line 143
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->stopBubble()V

    .line 152
    invoke-direct {p0, p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->unbindDrawables(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public setConfig(Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/multiwaveview/BubblePoolConfig",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<*>;"
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mConfig:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;

    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->initBubble()V

    .line 87
    return-void
.end method

.method public startBubble()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->startBubble(Z)V

    .line 157
    return-void
.end method

.method public startBubble(II)V
    .locals 1
    .parameter "baseStartX"
    .parameter "baseStartY"

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->startBubble(IIZ)V

    .line 167
    return-void
.end method

.method public stopBubble()V
    .locals 5

    .prologue
    .line 267
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mActionStart:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 268
    const/4 v2, 0x0

    .line 269
    .local v2, isStaticList:Z
    if-nez v2, :cond_0

    .line 270
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 271
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/BubbleView;

    .line 272
    .local v0, bubble:Lcom/android/internal/widget/multiwaveview/BubbleView;
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->stopMove()V

    .line 273
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->removeBubble(Lcom/android/internal/widget/multiwaveview/BubbleView;)V

    goto :goto_0

    .line 276
    .end local v0           #bubble:Lcom/android/internal/widget/multiwaveview/BubbleView;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBubbleLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/BubbleView;

    .line 277
    .restart local v0       #bubble:Lcom/android/internal/widget/multiwaveview/BubbleView;
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->stopMove()V

    goto :goto_1

    .line 281
    .end local v0           #bubble:Lcom/android/internal/widget/multiwaveview/BubbleView;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
