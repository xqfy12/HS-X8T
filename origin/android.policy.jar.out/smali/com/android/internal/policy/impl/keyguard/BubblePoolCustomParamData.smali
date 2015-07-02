.class public Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;
.super Ljava/lang/Object;
.source "BubblePoolCustomParamData.java"


# static fields
.field private static final ALPHA_MAX:I = 0xff

.field private static final CYCLE:F = 0.7f

.field public static final DEFAULT_LOCUS_LIST:[Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData; = null

.field private static final MERGIN:F = 100.0f

.field private static final SCALE_E:F = 0.25f

.field private static final SCALE_S:F = 0.25f


# instance fields
.field public mCycleCount:F

.field public mDirection:I

.field public mDuration:J

.field public mEndAlpha:I

.field public mEndScale:F

.field public mMarginMax:F

.field public mStartAlpha:I

.field public mStartDelay:J

.field public mStartMarginX:I

.field public mStartScale:F

.field public mXAxisMargin:I

.field public mYAxisMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 13
    const/4 v0, 0x3

    new-array v15, v0, [Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;

    const/16 v16, 0x0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x1

    const v5, 0x3f333333

    const/high16 v6, 0x42c8

    const-wide/16 v7, 0x7d0

    const-wide/16 v9, 0x0

    const/high16 v11, 0x3e80

    const/high16 v12, 0x3e80

    const/high16 v13, 0x3f80

    const v14, 0x3e99999a

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;-><init>(IIIIFFJJFFFF)V

    aput-object v0, v15, v16

    const/16 v16, 0x1

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, -0x64

    const/4 v4, -0x1

    const v5, 0x3f333333

    const/high16 v6, 0x42c8

    const-wide/16 v7, 0x9c4

    const-wide/16 v9, 0x3e8

    const/high16 v11, 0x3e80

    const/high16 v12, 0x3e80

    const/high16 v13, 0x3f80

    const v14, 0x3e99999a

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;-><init>(IIIIFFJJFFFF)V

    aput-object v0, v15, v16

    const/16 v16, 0x2

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, -0x32

    const/4 v4, 0x1

    const v5, 0x3f333333

    const/high16 v6, 0x42c8

    const-wide/16 v7, 0x9c4

    const-wide/16 v9, 0x5dc

    const/high16 v11, 0x3e80

    const/high16 v12, 0x3e80

    const/high16 v13, 0x3f80

    const v14, 0x3e99999a

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;-><init>(IIIIFFJJFFFF)V

    aput-object v0, v15, v16

    sput-object v15, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->DEFAULT_LOCUS_LIST:[Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;

    return-void
.end method

.method public constructor <init>(IIIIFFJJFFFF)V
    .locals 2
    .parameter "mXAxisMargin"
    .parameter "mYAxisMargin"
    .parameter "mStartMarginX"
    .parameter "mDirection"
    .parameter "mCycleCount"
    .parameter "mMarginMax"
    .parameter "mDuration"
    .parameter "mStartDelay"
    .parameter "mStartScale"
    .parameter "mEndScale"
    .parameter "mStartAlpha"
    .parameter "mEndAlpha"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mXAxisMargin:I

    .line 55
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mYAxisMargin:I

    .line 57
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mStartMarginX:I

    .line 58
    if-ltz p4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mDirection:I

    .line 59
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mStartMarginX:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mDirection:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mStartMarginX:I

    .line 61
    iput p5, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mCycleCount:F

    .line 62
    iput p6, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mMarginMax:F

    .line 63
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mStartMarginX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mMarginMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mMarginMax:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mStartMarginX:I

    .line 65
    :cond_0
    iput-wide p7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mDuration:J

    .line 66
    iput-wide p9, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mStartDelay:J

    .line 68
    iput p11, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mStartScale:F

    .line 69
    iput p12, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mEndScale:F

    .line 71
    const/high16 v0, 0x437f

    mul-float/2addr v0, p13

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mStartAlpha:I

    .line 72
    const/high16 v0, 0x437f

    mul-float v0, v0, p14

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolCustomParamData;->mEndAlpha:I

    .line 73
    return-void

    .line 58
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
