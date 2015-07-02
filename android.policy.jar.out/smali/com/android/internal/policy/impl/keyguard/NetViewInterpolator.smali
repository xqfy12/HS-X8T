.class public Lcom/android/internal/policy/impl/keyguard/NetViewInterpolator;
.super Landroid/view/animation/OvershootInterpolator;
.source "NetViewInterpolator.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProportion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/internal/policy/impl/keyguard/NetViewInterpolator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/NetViewInterpolator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "tension"
    .parameter "proportion"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 28
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/NetViewInterpolator;->mProportion:F

    .line 32
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/NetViewInterpolator;->mProportion:F

    .line 33
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .parameter "t"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 41
    .local v0, out:Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/NetViewInterpolator;->mProportion:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 42
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/NetViewInterpolator;->mProportion:F

    mul-float/2addr v2, v5

    div-float/2addr p1, v2

    .line 51
    :goto_0
    invoke-super {p0, p1}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v1

    .line 54
    .local v1, ret:F
    return v1

    .line 44
    .end local v1           #ret:F
    :cond_0
    sub-float v2, p1, v4

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/NetViewInterpolator;->mProportion:F

    sub-float v3, v4, v3

    mul-float/2addr v3, v5

    div-float/2addr v2, v3

    add-float p1, v2, v4

    goto :goto_0
.end method
