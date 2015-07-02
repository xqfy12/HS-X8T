.class public final Lcom/android/internal/policy/impl/keyguard/NetNodeLocus;
.super Ljava/lang/Object;
.source "NetNodeLocus.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/NetNodeValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/android/internal/policy/impl/keyguard/NetNodeValue;Lcom/android/internal/policy/impl/keyguard/NetNodeValue;)Lcom/android/internal/policy/impl/keyguard/NetNodeValue;
    .locals 8
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    .line 27
    iget v5, p2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->x:F

    iget v6, p3, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->x:F

    iget v7, p2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float v1, v5, v6

    .line 28
    .local v1, x:F
    iget v5, p2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->y:F

    iget v6, p3, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->y:F

    iget v7, p2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float v2, v5, v6

    .line 30
    .local v2, y:F
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;-><init>(FF)V

    .line 32
    .local v0, ret:Lcom/android/internal/policy/impl/keyguard/NetNodeValue;
    iget v5, p2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->scale:F

    iget v6, p3, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->scale:F

    iget v7, p2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->scale:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    iput v5, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->scale:F

    .line 33
    iget v5, p2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    iget v6, p3, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    iget v7, p2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    .line 34
    iget v5, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    :goto_0
    iput v3, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    .line 35
    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v3, v4

    :goto_1
    iput v3, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    .line 37
    return-object v0

    .line 34
    :cond_0
    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    goto :goto_0

    .line 35
    :cond_1
    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    goto :goto_1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    check-cast p2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    .end local p2
    check-cast p3, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/NetNodeLocus;->evaluate(FLcom/android/internal/policy/impl/keyguard/NetNodeValue;Lcom/android/internal/policy/impl/keyguard/NetNodeValue;)Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    move-result-object v0

    return-object v0
.end method
