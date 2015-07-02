.class public Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForRamdom;
.super Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;
.source "BubbleValueLocusForRamdom.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForRamdom;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForRamdom;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, config:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;,"Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig<*>;"
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;-><init>()V

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForRamdom;->init(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected calcX(FLcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;)Ljava/lang/Float;
    .locals 4
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mCycleCount:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

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

.method protected init(Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)V
    .locals 4
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
    .line 18
    .local p1, config:Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;,"Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig<*>;"
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getConfigType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusBase;->mConfigType:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mCycleCount:F

    .line 22
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolConfig;->getMarginMax()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMargin:F

    .line 24
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mCycleCount:F

    float-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mCycleCount:F

    .line 25
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMargin:F

    float-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mMargin:F

    .line 26
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleValueLocusForCustomParam;->mDirection:F

    .line 31
    return-void

    .line 26
    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method
