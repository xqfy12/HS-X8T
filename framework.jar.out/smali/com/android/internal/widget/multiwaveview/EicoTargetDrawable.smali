.class public Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
.super Ljava/lang/Object;
.source "EicoTargetDrawable.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I = null

.field public static final STATE_FOCUSED:[I = null

.field public static final STATE_INACTIVE:[I = null

.field private static final TAG:Ljava/lang/String; = "TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResId:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mPositionX:F

.field private mPositionY:F

.field mRect:Landroid/graphics/Rect;

.field private final mResourceId:I

.field private mRotationDeg:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_ACTIVE:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_FOCUSED:[I

    return-void

    .line 31
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
    .end array-data

    .line 33
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
    .end array-data

    .line 35
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "res"
    .parameter "resId"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    .line 40
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    .line 41
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionX:F

    .line 42
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionY:F

    .line 43
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleX:F

    .line 44
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleY:F

    .line 45
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mAlpha:F

    .line 47
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRotationDeg:F

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mEnabled:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 57
    iput p2, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mResourceId:I

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 2
    .parameter "res"
    .parameter "resId"
    .parameter "backGroundResID"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    .line 40
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    .line 41
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionX:F

    .line 42
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionY:F

    .line 43
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleX:F

    .line 44
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleY:F

    .line 45
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mAlpha:F

    .line 47
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRotationDeg:F

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mEnabled:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 62
    iput p2, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mResourceId:I

    .line 63
    iput p3, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundResId:I

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setDrawable(Landroid/content/res/Resources;II)V

    .line 65
    return-void
.end method

.method private resizeDrawables()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 147
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 149
    .local v1, d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 150
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 151
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 152
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .local v0, childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 154
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 159
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 160
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 164
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 167
    const/16 v6, 0xc8

    .line 168
    .local v6, minWidth:I
    const/16 v5, 0x14

    .line 169
    .local v5, minHeight:I
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 170
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 171
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 172
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 174
    .end local v5           #minHeight:I
    .end local v6           #minWidth:I
    :cond_2
    return-void
.end method

.method private resizeDrawablesAndBackground()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 178
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 180
    .local v1, d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 181
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 182
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 183
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    .local v0, childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 185
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v9, v9, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 190
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 191
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 195
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 198
    const/16 v6, 0xc8

    .line 199
    .local v6, minWidth:I
    const/16 v5, 0x14

    .line 200
    .local v5, minHeight:I
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 201
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 202
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 203
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 207
    .end local v5           #minHeight:I
    .end local v6           #minWidth:I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_4

    .line 208
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 209
    .restart local v1       #d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 210
    .restart local v4       #maxWidth:I
    const/4 v3, 0x0

    .line 211
    .restart local v3       #maxHeight:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 212
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 214
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 216
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v1, v9, v9, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 217
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 218
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 220
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 222
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_4
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 223
    const/16 v6, 0xc8

    .line 224
    .restart local v6       #minWidth:I
    const/16 v5, 0x14

    .line 225
    .restart local v5       #minHeight:I
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 226
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 227
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 228
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 230
    .end local v5           #minHeight:I
    .end local v6           #minWidth:I
    :cond_5
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x437f

    const/high16 v10, 0x3f00

    const/high16 v9, -0x4100

    .line 325
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mEnabled:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mAlpha:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 336
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->save(I)I

    .line 338
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleX:F

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleY:F

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionX:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionY:F

    add-float/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 339
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionX:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionY:F

    add-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 341
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mAlpha:F

    mul-float/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 343
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 349
    :cond_2
    const/4 v0, 0x0

    .line 350
    .local v0, offsetX:F
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    float-to-int v4, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 351
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v10, v4

    .line 353
    :cond_3
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    float-to-int v4, v4

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 354
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v9, v4

    .line 356
    :cond_4
    const/4 v1, 0x0

    .line 357
    .local v1, offsetY:F
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    float-to-int v4, v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 358
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v10, v4

    .line 360
    :cond_5
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    float-to-int v4, v4

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 361
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v9, v4

    .line 364
    :cond_6
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionX:F

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    add-float v2, v4, v0

    .line 365
    .local v2, transX:F
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionY:F

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    add-float v3, v4, v1

    .line 368
    .local v3, transY:F
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->save(I)I

    .line 372
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRotationDeg:F

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionX:F

    add-float/2addr v5, v6

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionY:F

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 374
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionX:F

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionY:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    add-float/2addr v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 378
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mAlpha:F

    mul-float/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 379
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public dumpInfo()V
    .locals 3

    .prologue
    .line 386
    const-string v0, "TargetDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TargetInfo::::scaleX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mScaleY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mAlpha:F

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mResourceId:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRotationDeg:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 106
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 108
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return v1
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 117
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 119
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 120
    .local v2, states:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 121
    aget v3, v2, v1

    const v4, 0x101009c

    if-ne v3, v4, :cond_0

    .line 122
    const/4 v3, 0x1

    .line 126
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :goto_1
    return v3

    .line 120
    .restart local v0       #d:Landroid/graphics/drawable/StateListDrawable;
    .restart local v1       #i:I
    .restart local v2       #states:[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 269
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mAlpha:F

    .line 270
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 243
    :cond_0
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 250
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 70
    if-nez p2, :cond_1

    move-object v0, v1

    .line 72
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->resizeDrawables()V

    .line 74
    sget-object v1, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 75
    return-void

    .line 70
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setDrawable(Landroid/content/res/Resources;II)V
    .locals 4
    .parameter "res"
    .parameter "resId"
    .parameter "backgroundResId"

    .prologue
    const/4 v3, 0x0

    .line 80
    if-nez p2, :cond_1

    move-object v1, v3

    .line 82
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    if-nez p3, :cond_3

    move-object v0, v3

    .line 85
    .local v0, bgDrawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->resizeDrawablesAndBackground()V

    .line 87
    sget-object v2, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setState([I)V

    .line 88
    return-void

    .line 80
    .end local v0           #bgDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v2, v3

    .line 82
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mEnabled:Z

    .line 391
    return-void
.end method

.method public setPositionX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 293
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionX:F

    .line 294
    return-void
.end method

.method public setPositionY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 297
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mPositionY:F

    .line 298
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "rotationDeg"

    .prologue
    .line 309
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mRotationDeg:F

    .line 310
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 261
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleX:F

    .line 262
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 265
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mScaleY:F

    .line 266
    return-void
.end method

.method public setState([I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 93
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 96
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 98
    .restart local v0       #d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 100
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 253
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationX:F

    .line 254
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 257
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->mTranslationY:F

    .line 258
    return-void
.end method
