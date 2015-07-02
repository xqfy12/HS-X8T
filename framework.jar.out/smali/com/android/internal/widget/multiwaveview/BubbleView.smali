.class public Lcom/android/internal/widget/multiwaveview/BubbleView;
.super Landroid/widget/ImageView;
.source "BubbleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/internal/widget/multiwaveview/BubbleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/multiwaveview/BubbleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0, p2}, Lcom/android/internal/widget/multiwaveview/BubbleView;->init(Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private getH()I
    .locals 6

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getHeight()I

    move-result v3

    .line 141
    .local v3, height:I
    if-nez v3, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 143
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 145
    if-nez v3, :cond_0

    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 146
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 147
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    div-int v3, v4, v5

    .line 153
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return v3
.end method

.method private getW()I
    .locals 6

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getWidth()I

    move-result v3

    .line 158
    .local v3, width:I
    if-nez v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 160
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 162
    if-nez v3, :cond_0

    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 163
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 164
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    div-int v3, v4, v5

    .line 170
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return v3
.end method

.method private init(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/4 v2, -0x2

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setVisibility(I)V

    .line 53
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getMoveAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;JJFFIILcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)Landroid/animation/Animator;
    .locals 10
    .parameter "start"
    .parameter "end"
    .parameter "duration"
    .parameter "startDelay"
    .parameter "startScale"
    .parameter "endScale"
    .parameter "startAlpha"
    .parameter "endAlpha"
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "JJFFII",
            "Lcom/android/internal/widget/multiwaveview/BubblePoolConfig",
            "<*>;I)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 84
    .local p11, config:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<*>;"
    new-instance v2, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    invoke-direct {v2}, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;-><init>()V

    .line 85
    .local v2, startValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v2, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->x:F

    .line 86
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iput v1, v2, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->y:F

    .line 87
    move/from16 v0, p7

    iput v0, v2, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    .line 88
    move/from16 v0, p9

    iput v0, v2, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    .line 90
    new-instance v3, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    invoke-direct {v3}, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;-><init>()V

    .line 91
    .local v3, endValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iput v1, v3, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->x:F

    .line 92
    iget v1, p2, Landroid/graphics/PointF;->y:F

    iput v1, v3, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->y:F

    .line 93
    move/from16 v0, p8

    iput v0, v3, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    .line 94
    move/from16 v0, p10

    iput v0, v3, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    move-object v1, p0

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p11

    move/from16 v9, p12

    .line 96
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getMoveAnimation(Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;JJLcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public getMoveAnimation(Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;JJLcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)Landroid/animation/Animator;
    .locals 7
    .parameter "startValue"
    .parameter "endValue"
    .parameter "duration"
    .parameter "startDelay"
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;",
            "Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;",
            "JJ",
            "Lcom/android/internal/widget/multiwaveview/BubblePoolConfig",
            "<*>;I)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 102
    .local p7, config:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<*>;"
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->stopMove()V

    .line 104
    :cond_0
    invoke-virtual {p7}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->isColorChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x416fffffe0000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/high16 v4, -0x100

    or-int/2addr v3, v4

    :goto_0
    iput v3, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mColor:I

    .line 106
    iget v3, p1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->x:F

    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getW()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->x:F

    .line 107
    iget v3, p1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->y:F

    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getH()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->y:F

    .line 109
    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;

    invoke-direct {v0, p7, p8}, Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;-><init>(Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)V

    .line 110
    .local v0, evaluator:Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;
    const-string v3, "BubbleValue"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v0, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 112
    .local v1, move:Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/internal/widget/multiwaveview/BubbleView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/multiwaveview/BubbleView$1;-><init>(Lcom/android/internal/widget/multiwaveview/BubbleView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    .line 128
    invoke-virtual {p7}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getConfigType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 129
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 130
    .local v2, t:Landroid/animation/TimeInterpolator;
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    .end local v2           #t:Landroid/animation/TimeInterpolator;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 134
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p5, p6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 136
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    return-object v3

    .line 104
    .end local v0           #evaluator:Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;
    .end local v1           #move:Landroid/animation/ValueAnimator;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    return-void
.end method

.method public setBubbleValue(Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)V
    .locals 2
    .parameter "bubbleValue"

    .prologue
    .line 185
    iget v0, p1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->x:F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setX(F)V

    .line 186
    iget v0, p1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->y:F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setY(F)V

    .line 187
    iget v0, p1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setScaleX(F)V

    .line 188
    iget v0, p1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setScaleY(F)V

    .line 189
    iget v0, p1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setAlpha(F)V

    .line 190
    return-void
.end method

.method public startMove(Landroid/graphics/PointF;Landroid/graphics/PointF;JJFFIILcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "duration"
    .parameter "startDelay"
    .parameter "startScale"
    .parameter "endScale"
    .parameter "startAlpha"
    .parameter "endAlpha"
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "JJFFII",
            "Lcom/android/internal/widget/multiwaveview/BubblePoolConfig",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p11, config:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<*>;"
    invoke-virtual/range {p0 .. p12}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getMoveAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;JJFFIILcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 72
    return-void
.end method

.method public startMove(Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;JJLcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)V
    .locals 1
    .parameter "startValue"
    .parameter "endValue"
    .parameter "duration"
    .parameter "startDelay"
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;",
            "Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;",
            "JJ",
            "Lcom/android/internal/widget/multiwaveview/BubblePoolConfig",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p7, config:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<*>;"
    invoke-virtual/range {p0 .. p8}, Lcom/android/internal/widget/multiwaveview/BubbleView;->getMoveAnimation(Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;JJLcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 78
    return-void
.end method

.method public stopMove()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0
.end method
