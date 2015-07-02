.class public abstract Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;
.super Ljava/lang/Object;
.source "BubbleValueLocusBase.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mConfigType:I

.field private mOldAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)V
    .locals 1
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/multiwaveview/BubblePoolConfig",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p1, config:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<*>;"
    const/4 v0, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->mOldAlpha:I

    .line 16
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->mConfigType:I

    .line 19
    return-void
.end method


# virtual methods
.method protected abstract calcAlpha(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)I
.end method

.method protected abstract calcScale(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)F
.end method

.method protected abstract calcX(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)Ljava/lang/Float;
.end method

.method protected abstract calcY(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)F
.end method

.method public evaluate(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;
    .locals 4
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    const/16 v1, 0xff

    .line 24
    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    invoke-direct {v0}, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;-><init>()V

    .line 26
    .local v0, ret:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->calcX(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->x:F

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->calcY(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)F

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->y:F

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->calcScale(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)F

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->calcAlpha(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    .line 31
    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    if-le v2, v1, :cond_1

    :goto_0
    iput v1, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    .line 32
    iget v1, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    .line 34
    iget v1, p0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->mOldAlpha:I

    iget v2, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->mOldAlpha:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->mConfigType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 35
    sget-object v1, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endValue.alpha:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startValue.alpha:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v1, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fraction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret.alpha:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    iget v1, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    iput v1, p0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->mOldAlpha:I

    .line 46
    return-object v0

    .line 31
    :cond_1
    iget v1, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    goto :goto_0

    .line 32
    :cond_2
    iget v1, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    goto :goto_1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 11
    check-cast p2, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    .end local p2
    check-cast p3, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->evaluate(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    move-result-object v0

    return-object v0
.end method
