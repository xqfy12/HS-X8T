.class public Lcom/android/internal/policy/impl/keyguard/FlowView;
.super Landroid/view/View;
.source "FlowView.java"


# static fields
.field public static final DEBUG_DRAW:Z

.field private static mWaveDrawable1:Landroid/graphics/drawable/Drawable;

.field private static mWaveDrawable2:Landroid/graphics/drawable/Drawable;


# instance fields
.field private curAnimationValue:F

.field private mAnim:Landroid/animation/ValueAnimator;

.field private mCycleHeight:I

.field private mCycleWidth:I

.field private mDeltaHeight:I

.field private mDirection:I

.field private mHeight:I

.field private mMask:Landroid/graphics/Bitmap;

.field private mResult:Landroid/graphics/Bitmap;

.field private mWaveCanvas:Landroid/graphics/Canvas;

.field private mWidth:I

.field private paint:Landroid/graphics/Paint;

.field private range:Landroid/graphics/Rect;

.field private wavePreferDto1:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

.field private wavePreferDto2:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    .line 64
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    invoke-direct {v2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->wavePreferDto1:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    .line 68
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    invoke-direct {v2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->wavePreferDto2:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    .line 100
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->paint:Landroid/graphics/Paint;

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    .local v1, res:Landroid/content/res/Resources;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveDrawable1:Landroid/graphics/drawable/Drawable;

    const v3, 0x1080273

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getmWaveDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveDrawable1:Landroid/graphics/drawable/Drawable;

    .line 150
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveDrawable2:Landroid/graphics/drawable/Drawable;

    const v3, 0x1080274

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getmWaveDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveDrawable2:Landroid/graphics/drawable/Drawable;

    .line 154
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/AnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/FlowView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/FlowView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/FlowView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/FlowView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/FlowView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/FlowView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080298

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mMask:Landroid/graphics/Bitmap;

    .line 178
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mResult:Landroid/graphics/Bitmap;

    .line 180
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 182
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/FlowView;->setWillNotDraw(Z)V

    .line 184
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    .line 185
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mHeight:I

    .line 187
    const v2, 0x1080275

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    .local v0, cycle:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleWidth:I

    .line 189
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleHeight:I

    .line 191
    const-string v2, "BatteryPlugin.FlowView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlowView(), mCycleWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCycleHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 154
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/FlowView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->curAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/FlowView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/FlowView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/FlowView;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private drawWave(Landroid/graphics/Canvas;Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;Landroid/graphics/drawable/Drawable;I)V
    .locals 13
    .parameter "canvas"
    .parameter "waveDto"
    .parameter "waveDrawable"
    .parameter "waveSpeed"

    .prologue
    .line 328
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleHeight:I

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleHeight:I

    int-to-double v9, v9

    const-wide v11, 0x3fe051eb851eb852L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    sub-int v1, v8, v9

    .line 331
    .local v1, animHeight:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 332
    const/4 v8, 0x2

    move/from16 v0, p4

    if-ne v8, v0, :cond_1

    .line 333
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    neg-int v8, v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleWidth:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->curAnimationValue:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->curAnimationValue:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p2, v8}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateX(I)V

    .line 339
    :goto_0
    int-to-float v8, v1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->curAnimationValue:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p2, v8}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateY(I)V

    .line 345
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLastTraslateX()I

    move-result v8

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLastTraslateY()I

    move-result v9

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/FlowView;->saveCanvas(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 404
    :cond_0
    :goto_1
    return-void

    .line 336
    :cond_1
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    neg-int v8, v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleWidth:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleWidth:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->curAnimationValue:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p2, v8}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateX(I)V

    goto :goto_0

    .line 346
    :cond_2
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 347
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLastTraslateX()I

    move-result v4

    .line 348
    .local v4, mLastTraslateX:I
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLastTraslateY()I

    move-result v5

    .line 349
    .local v5, mLastTraslateY:I
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLoopNewTraslateX()I

    move-result v6

    .line 354
    .local v6, mLoopNewTraslateX:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleWidth:I

    if-ge v4, v8, :cond_5

    add-int v8, v4, p4

    if-ltz v8, :cond_5

    const/4 v3, 0x1

    .line 357
    .local v3, isLoop:Z
    :goto_2
    add-int v8, v4, p4

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleWidth:I

    if-gt v8, v9, :cond_6

    .line 358
    add-int v8, v4, p4

    invoke-virtual {p2, v8}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateX(I)V

    .line 363
    :goto_3
    sub-int v7, v1, v5

    .line 364
    .local v7, nowHeight:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    if-eq v7, v8, :cond_3

    .line 365
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    if-le v7, v8, :cond_8

    .line 366
    sub-int v8, v7, p4

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    if-lt v8, v9, :cond_7

    sub-int v7, v7, p4

    .line 372
    :goto_4
    sub-int v8, v1, v7

    invoke-virtual {p2, v8}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateY(I)V

    .line 375
    :cond_3
    if-eqz v3, :cond_a

    .line 380
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLastTraslateX()I

    move-result v8

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLoopNewTraslateX()I

    move-result v9

    sub-int v2, v8, v9

    .line 382
    .local v2, excedeWidth:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    sub-int v8, v2, v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_4

    .line 383
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLoopNewTraslateX()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    sub-int v9, v2, v9

    add-int/2addr v8, v9

    invoke-virtual {p2, v8}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLoopNewTraslateX(I)V

    .line 387
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLastTraslateX()I

    move-result v8

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLastTraslateY()I

    move-result v9

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/FlowView;->saveCanvas(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 388
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLoopNewTraslateX()I

    move-result v8

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLastTraslateY()I

    move-result v9

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/FlowView;->saveCanvas(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 393
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLoopNewTraslateX()I

    move-result v8

    add-int v8, v8, p4

    invoke-virtual {p2, v8}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLoopNewTraslateX(I)V

    goto/16 :goto_1

    .line 354
    .end local v2           #excedeWidth:I
    .end local v3           #isLoop:Z
    .end local v7           #nowHeight:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 360
    .restart local v3       #isLoop:Z
    :cond_6
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    neg-int v8, v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mCycleWidth:I

    add-int/2addr v8, v9

    invoke-virtual {p2, v8}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateX(I)V

    goto :goto_3

    .line 366
    .restart local v7       #nowHeight:I
    :cond_7
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    goto :goto_4

    .line 369
    :cond_8
    add-int v8, v7, p4

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    if-gt v8, v9, :cond_9

    add-int v7, v7, p4

    :goto_5
    goto :goto_4

    :cond_9
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    goto :goto_5

    .line 396
    :cond_a
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    neg-int v8, v8

    if-eq v6, v8, :cond_b

    .line 397
    invoke-virtual {p2, v6}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateX(I)V

    .line 399
    :cond_b
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    neg-int v8, v8

    invoke-virtual {p2, v8}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLoopNewTraslateX(I)V

    .line 401
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLastTraslateX()I

    move-result v8

    invoke-virtual {p2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->getmLastTraslateY()I

    move-result v9

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/internal/policy/impl/keyguard/FlowView;->saveCanvas(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    goto/16 :goto_1
.end method

.method private getmWaveDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "mWaveDrawable"
    .parameter "waveDrawable"

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    const-string v0, "BatteryPlugin.FlowView"

    const-string v1, "The Drawable Object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    if-nez p1, :cond_1

    .line 131
    move-object p1, p2

    .line 134
    :cond_1
    return-object p1
.end method

.method private removeAllListeners()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 428
    return-void
.end method

.method private saveCanvas(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .parameter "canvas"
    .parameter "waveDrawable"
    .parameter "transX"
    .parameter "transY"

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 416
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 417
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 418
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 420
    return-void
.end method


# virtual methods
.method public animate(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 242
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->wavePreferDto1:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateX(I)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->wavePreferDto1:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateY(I)V

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->wavePreferDto2:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateX(I)V

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->wavePreferDto2:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLastTraslateY(I)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->wavePreferDto1:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLoopNewTraslateX(I)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->wavePreferDto2:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWidth:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;->setmLoopNewTraslateX(I)V

    .line 252
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 256
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/FlowView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/FlowView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/FlowView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->post(Ljava/lang/Runnable;)Z

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->postInvalidate()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 266
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->invalidate()V

    goto :goto_0
.end method

.method public animateIn()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->animate(I)V

    .line 232
    return-void
.end method

.method public animateOut()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->animate(I)V

    .line 239
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 435
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveCanvas:Landroid/graphics/Canvas;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 439
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mMask:Landroid/graphics/Bitmap;

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mResult:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mResult:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mResult:Landroid/graphics/Bitmap;

    .line 446
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->animateOut()V

    .line 447
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->removeAllListeners()V

    .line 448
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mResult:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 298
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveCanvas:Landroid/graphics/Canvas;

    .line 299
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mResult:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveCanvas:Landroid/graphics/Canvas;

    .line 302
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->wavePreferDto1:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveDrawable1:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/FlowView;->drawWave(Landroid/graphics/Canvas;Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;Landroid/graphics/drawable/Drawable;I)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->wavePreferDto2:Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveDrawable2:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/FlowView;->drawWave(Landroid/graphics/Canvas;Lcom/android/internal/policy/impl/keyguard/WavePreferenceDto;Landroid/graphics/drawable/Drawable;I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mWaveCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mMask:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->range:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->range:Landroid/graphics/Rect;

    .line 313
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mResult:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->range:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v5, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->postInvalidate()V

    .line 317
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v9, 0x0

    .line 201
    const/4 v0, 0x0

    .local v0, h:I
    move v6, v0

    .line 202
    .local v6, w:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getPaddingLeft()I

    move-result v3

    .line 203
    .local v3, pleft:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getPaddingRight()I

    move-result v4

    .line 204
    .local v4, pright:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getPaddingTop()I

    move-result v5

    .line 205
    .local v5, ptop:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getPaddingBottom()I

    move-result v2

    .line 215
    .local v2, pbottom:I
    add-int v8, v3, v4

    add-int/2addr v6, v8

    .line 216
    add-int v8, v5, v2

    add-int/2addr v0, v8

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 221
    invoke-static {v6, p1, v9}, Lcom/android/internal/policy/impl/keyguard/FlowView;->resolveSizeAndState(III)I

    move-result v7

    .line 222
    .local v7, widthSize:I
    invoke-static {v0, p2, v9}, Lcom/android/internal/policy/impl/keyguard/FlowView;->resolveSizeAndState(III)I

    move-result v1

    .line 224
    .local v1, heightSize:I
    invoke-virtual {p0, v7, v1}, Lcom/android/internal/policy/impl/keyguard/FlowView;->setMeasuredDimension(II)V

    .line 225
    return-void
.end method

.method protected updateWavePer(F)V
    .locals 6
    .parameter "percentage"

    .prologue
    const/4 v5, 0x2

    .line 277
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    .line 278
    .local v0, lastDeltaHeight:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    .line 280
    const-string v1, "BatteryPlugin.FlowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWavePer, lastDeltaHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDeltaHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDirection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    if-ne v1, v5, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDeltaHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/FlowView;->animate(I)V

    goto :goto_0
.end method
