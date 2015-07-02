.class public Lcom/android/internal/widget/multiwaveview/LoopIndex;
.super Ljava/lang/Object;
.source "LoopIndex.java"


# instance fields
.field private mIndex:I

.field private mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-gtz p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "max must be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mMax:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mIndex:I

    .line 29
    return-void
.end method


# virtual methods
.method public current()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mIndex:I

    return v0
.end method

.method public dec()I
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->previous()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mIndex:I

    return v0
.end method

.method public getLoopSize()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mMax:I

    return v0
.end method

.method public inc()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->next()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mIndex:I

    return v0
.end method

.method public next()I
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mMax:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public previous()I
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mIndex:I

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mMax:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mMax:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public setCurrent(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/LoopIndex;->translate(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mIndex:I

    .line 91
    return-void
.end method

.method public translate(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/LoopIndex;->mMax:I

    rem-int v0, p1, v0

    return v0
.end method
