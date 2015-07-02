.class public Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;
.super Ljava/lang/Object;
.source "BubblePoolCustomLocusData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BubblePoolCustomLocus"
.end annotation


# instance fields
.field public mCurve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

.field public mDuration:J

.field private mPointData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public mStartDelay:J


# direct methods
.method public constructor <init>(Ljava/util/List;JJ)V
    .locals 8
    .parameter
    .parameter "duration"
    .parameter "startDelay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;JJ)V"
        }
    .end annotation

    .prologue
    .local p1, datas:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v2, 0x0

    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;-><init>(Ljava/util/List;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V
    .locals 9
    .parameter
    .parameter "firstP"
    .parameter "lastP"
    .parameter "duration"
    .parameter "startDelay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;",
            "Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, datas:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 52
    .local v8, data:Ljava/lang/Object;
    instance-of v0, v8, Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mPointData:Ljava/util/List;

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Landroid/graphics/PointF;

    .line 55
    .local v1, array:[Landroid/graphics/PointF;
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #array:[Landroid/graphics/PointF;
    check-cast v1, [Landroid/graphics/PointF;

    .restart local v1       #array:[Landroid/graphics/PointF;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    .line 57
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->init([Landroid/graphics/PointF;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V

    .line 60
    .end local v1           #array:[Landroid/graphics/PointF;
    :cond_0
    instance-of v0, v8, Landroid/graphics/Point;

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Landroid/graphics/Point;

    .line 62
    .local v1, array:[Landroid/graphics/Point;
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #array:[Landroid/graphics/Point;
    check-cast v1, [Landroid/graphics/Point;

    .restart local v1       #array:[Landroid/graphics/Point;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    .line 64
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->init([Landroid/graphics/Point;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V

    .line 66
    .end local v1           #array:[Landroid/graphics/Point;
    :cond_1
    return-void
.end method

.method public constructor <init>([Landroid/graphics/Point;JJ)V
    .locals 8
    .parameter "datas"
    .parameter "duration"
    .parameter "startDelay"

    .prologue
    const/4 v2, 0x0

    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;-><init>([Landroid/graphics/Point;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V

    .line 71
    return-void
.end method

.method public constructor <init>([Landroid/graphics/Point;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V
    .locals 0
    .parameter "datas"
    .parameter "firstP"
    .parameter "lastP"
    .parameter "duration"
    .parameter "startDelay"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->init([Landroid/graphics/Point;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V

    .line 38
    return-void
.end method

.method public constructor <init>([Landroid/graphics/PointF;JJ)V
    .locals 8
    .parameter "datas"
    .parameter "duration"
    .parameter "startDelay"

    .prologue
    const/4 v2, 0x0

    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;-><init>([Landroid/graphics/PointF;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V

    .line 76
    return-void
.end method

.method public constructor <init>([Landroid/graphics/PointF;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V
    .locals 0
    .parameter "datas"
    .parameter "firstP"
    .parameter "lastP"
    .parameter "duration"
    .parameter "startDelay"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->init([Landroid/graphics/PointF;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V

    .line 44
    return-void
.end method

.method public constructor <init>([Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V
    .locals 0
    .parameter "datas"
    .parameter "duration"
    .parameter "startDelay"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    .line 29
    iput-wide p2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mDuration:J

    .line 30
    iput-wide p4, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mStartDelay:J

    .line 31
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->adjData()V

    .line 32
    return-void
.end method

.method private adjData()V
    .locals 15

    .prologue
    .line 126
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    const/high16 v13, -0x4080

    cmpl-float v12, v12, v13

    if-nez v12, :cond_0

    .line 127
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    const/4 v13, 0x0

    iput v13, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    .line 129
    :cond_0
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    const/16 v13, -0xff

    if-ne v12, v13, :cond_2

    .line 131
    :cond_1
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    const/4 v13, 0x0

    iput v13, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    .line 134
    :cond_2
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    array-length v12, v12

    add-int/lit8 v4, v12, -0x1

    .line 135
    .local v4, indexLast:I
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    const/high16 v13, -0x4080

    cmpl-float v12, v12, v13

    if-nez v12, :cond_3

    .line 136
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    const/high16 v13, 0x3f80

    iput v13, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    .line 138
    :cond_3
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    const/16 v13, -0xff

    if-ne v12, v13, :cond_5

    .line 140
    :cond_4
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    const/16 v13, 0xff

    iput v13, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    .line 143
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v6, scaleNoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, alphaNoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 146
    .local v8, tSum:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    array-length v12, v12

    if-ge v3, v12, :cond_d

    .line 147
    const/4 v9, 0x0

    .line 149
    .local v9, tSumReset:Z
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v4

    iget v7, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mTimeWeigth:I

    .line 150
    .local v7, t:I
    if-gtz v7, :cond_6

    const/4 v7, 0x1

    .line 151
    :cond_6
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v3

    iput v7, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mTimeWeigth:I

    add-int/2addr v8, v7

    .line 153
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v3

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    const/high16 v13, -0x4080

    cmpl-float v12, v12, v13

    if-nez v12, :cond_9

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_1
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v3

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v3

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    const/16 v13, -0xff

    if-ne v12, v13, :cond_b

    .line 177
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :goto_2
    if-eqz v9, :cond_8

    const/4 v8, 0x0

    .line 146
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 157
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 159
    .local v5, sIndex:I
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v3

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    iget-object v13, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    add-int/lit8 v14, v5, -0x1

    aget-object v13, v13, v14

    iget-object v13, v13, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v13, v13, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    sub-float v2, v12, v13

    .line 162
    .local v2, delta:F
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    add-int/lit8 v13, v5, -0x1

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v11, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    .line 163
    .local v11, valueSum:F
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 164
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 165
    .local v1, curIndex:I
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v1

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mTimeWeigth:I

    int-to-float v12, v12

    mul-float/2addr v12, v2

    int-to-float v13, v8

    div-float v10, v12, v13

    .line 168
    .local v10, value:F
    add-float/2addr v11, v10

    .line 169
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v1

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iput v11, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    goto :goto_3

    .line 172
    .end local v1           #curIndex:I
    .end local v2           #delta:F
    .end local v5           #sIndex:I
    .end local v10           #value:F
    .end local v11           #valueSum:F
    :cond_a
    const/4 v9, 0x1

    goto :goto_1

    .line 179
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    .line 180
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 182
    .restart local v5       #sIndex:I
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v3

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    iget-object v13, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    add-int/lit8 v14, v5, -0x1

    aget-object v13, v13, v14

    iget-object v13, v13, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v13, v13, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    sub-int/2addr v12, v13

    int-to-float v2, v12

    .line 185
    .restart local v2       #delta:F
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    add-int/lit8 v13, v5, -0x1

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v12, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    int-to-float v11, v12

    .line 186
    .restart local v11       #valueSum:F
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    .line 187
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    .restart local v1       #curIndex:I
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    const/high16 v12, 0x437f

    mul-float/2addr v12, v2

    iget-object v13, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v13, v13, v1

    iget v13, v13, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mTimeWeigth:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v8

    div-float v10, v12, v13

    .line 192
    .restart local v10       #value:F
    add-float/2addr v11, v10

    .line 193
    iget-object v12, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v12, v12, v1

    iget-object v12, v12, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    float-to-int v13, v11

    iput v13, v12, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    goto :goto_4

    .line 197
    .end local v1           #curIndex:I
    .end local v2           #delta:F
    .end local v5           #sIndex:I
    .end local v10           #value:F
    .end local v11           #valueSum:F
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 204
    .end local v7           #t:I
    .end local v9           #tSumReset:Z
    :cond_d
    return-void
.end method

.method private init([Landroid/graphics/Point;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V
    .locals 4
    .parameter "datas"
    .parameter "firstP"
    .parameter "lastP"
    .parameter "duration"
    .parameter "startDelay"

    .prologue
    .line 99
    iput-wide p4, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mDuration:J

    .line 100
    iput-wide p6, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mStartDelay:J

    .line 101
    array-length v1, p1

    new-array v1, v1, [Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    .line 102
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    new-instance v2, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(Landroid/graphics/Point;)V

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->setFirstLast(Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;)V

    .line 106
    return-void
.end method

.method private init([Landroid/graphics/PointF;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;JJ)V
    .locals 4
    .parameter "datas"
    .parameter "firstP"
    .parameter "lastP"
    .parameter "duration"
    .parameter "startDelay"

    .prologue
    .line 86
    iput-wide p4, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mDuration:J

    .line 87
    iput-wide p6, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mStartDelay:J

    .line 88
    array-length v1, p1

    new-array v1, v1, [Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    .line 89
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    new-instance v2, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;-><init>(Landroid/graphics/PointF;)V

    aput-object v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->setFirstLast(Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;)V

    .line 94
    return-void
.end method

.method private setFirstLast(Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;)V
    .locals 3
    .parameter "firstP"
    .parameter "lastP"

    .prologue
    const/4 v2, 0x0

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget-object v1, p1, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v1, v1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    iput v1, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget-object v1, p1, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v1, v1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    iput v1, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v0, v0, v2

    iget v1, p1, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mTimeWeigth:I

    iput v1, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mTimeWeigth:I

    .line 116
    :cond_0
    if-eqz p2, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget-object v1, p2, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v1, v1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    iput v1, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget-object v1, p2, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v1, v1, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    iput v1, v0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p2, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mTimeWeigth:I

    iput v1, v0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mTimeWeigth:I

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->adjData()V

    .line 123
    return-void
.end method


# virtual methods
.method public getBezierCurve()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mPointData:Ljava/util/List;

    if-nez v2, :cond_0

    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mPointData:Ljava/util/List;

    .line 209
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mPointData:Ljava/util/List;

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v4, v4, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->x:F

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mData:[Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocusPoint;->mBubbleValue:Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;

    iget v5, v5, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1           #index:I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mCurve:Ljava/util/List;

    if-nez v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mPointData:Ljava/util/List;

    const/high16 v3, 0x3f80

    invoke-static {v2, v3}, Lcom/android/internal/widget/multiwaveview/BezierCurve;->GetBezierCurve(Ljava/util/List;F)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mCurve:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolCustomLocusData$BubblePoolCustomLocus;->mCurve:Ljava/util/List;

    return-object v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
