.class public Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;
.super Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusBase;
.source "BubbleValueLocusForCustomParam.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCycleCount:F

.field protected mDirection:F

.field protected mMargin:F

.field private mMarginFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusBase;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)V
    .locals 0
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, config:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;,"Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig<*>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusBase;-><init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)V

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->init(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected calcAlpha(FLcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;)I
    .locals 3
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 70
    iget v0, p2, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;->alpha:I

    int-to-float v0, v0

    iget v1, p3, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;->alpha:I

    iget v2, p2, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;->alpha:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected calcScale(FLcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;)F
    .locals 3
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 65
    iget v0, p2, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;->scale:F

    iget v1, p3, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;->scale:F

    iget v2, p2, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;->scale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method protected calcX(FLcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;)Ljava/lang/Float;
    .locals 4
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMarginFraction:F

    add-float/2addr p1, v0

    .line 54
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mCycleCount:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMargin:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mDirection:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;->x:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected calcY(FLcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;)F
    .locals 3
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 60
    iget v0, p2, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;->y:F

    iget v1, p3, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;->y:F

    iget v2, p2, Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method protected init(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)V
    .locals 8
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p1, config:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;,"Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig<*>;"
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getConfigType()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusBase;->mConfigType:I

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getCustomData()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, p2

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;

    .line 32
    .local v1, data:Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;
    iget v2, v1, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mCycleCount:F

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mCycleCount:F

    .line 33
    iget v2, v1, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mMarginMax:F

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMargin:F

    .line 34
    iget v2, v1, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mDirection:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mDirection:F

    .line 35
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMarginFraction:F

    .line 37
    iget v2, v1, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mMarginMax:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 38
    iget v2, v1, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mStartMarginX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMargin:F

    div-float v0, v2, v3

    .line 39
    .local v0, d:F
    const/high16 v2, -0x4080

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 40
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMarginFraction:F

    .line 41
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMarginFraction:F

    float-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mCycleCount:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMarginFraction:F

    .line 49
    .end local v0           #d:F
    :cond_0
    return-void
.end method
