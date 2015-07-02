.class public final Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;
.super Ljava/lang/Object;
.source "BubbleValueLocus.java"

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
.field private mBubbleValueLocus:Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;->TAG:Ljava/lang/String;

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
    .line 15
    .local p1, config:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;->mBubbleValueLocus:Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;->init(Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)V

    .line 17
    return-void
.end method

.method private init(Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)V
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
    .line 20
    .local p1, config:Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;,"Lcom/android/internal/widget/multiwaveview/BubblePoolConfig<*>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;->getConfigType()I

    .line 23
    new-instance v0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusForRamdom;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusForRamdom;-><init>(Lcom/android/internal/widget/multiwaveview/BubblePoolConfig;)V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;->mBubbleValueLocus:Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;

    .line 28
    return-void
.end method


# virtual methods
.method public evaluate(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;
    .locals 2
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;->mBubbleValueLocus:Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/BubbleValueLocusBase;->evaluate(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    move-result-object v0

    .line 34
    .local v0, ret:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;
    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 8
    check-cast p2, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    .end local p2
    check-cast p3, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/BubbleValueLocus;->evaluate(FLcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;)Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    move-result-object v0

    return-object v0
.end method
