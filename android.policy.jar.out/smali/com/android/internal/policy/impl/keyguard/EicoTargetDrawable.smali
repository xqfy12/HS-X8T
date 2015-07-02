.class public Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
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

.field private mName:Ljava/lang/String;

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

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_ACTIVE:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_FOCUSED:[I

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
    .locals 3
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    .line 40
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    .line 41
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionX:F

    .line 42
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionY:F

    .line 43
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleX:F

    .line 44
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleY:F

    .line 45
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mAlpha:F

    .line 47
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mName:Ljava/lang/String;

    .line 49
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRotationDeg:F

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mEnabled:Z

    .line 56
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 59
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mResourceId:I

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 3
    .parameter "res"
    .parameter "resId"
    .parameter "backGroundResID"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    .line 40
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    .line 41
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionX:F

    .line 42
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionY:F

    .line 43
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleX:F

    .line 44
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleY:F

    .line 45
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mAlpha:F

    .line 47
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mName:Ljava/lang/String;

    .line 49
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRotationDeg:F

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mEnabled:Z

    .line 56
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 64
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mResourceId:I

    .line 65
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundResId:I

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setDrawable(Landroid/content/res/Resources;II)V

    .line 67
    return-void
.end method

.method private resizeDrawables()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 157
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 159
    .local v1, d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 160
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 161
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 162
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 164
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 169
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 170
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 173
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 174
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 177
    const/16 v6, 0xc8

    .line 178
    .local v6, minWidth:I
    const/16 v5, 0x14

    .line 179
    .local v5, minHeight:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 180
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 181
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 182
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 184
    .end local v5           #minHeight:I
    .end local v6           #minWidth:I
    :cond_2
    return-void
.end method

.method private resizeDrawablesAndBackground()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 188
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 190
    .local v1, d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 191
    .local v4, maxWidth:I
    const/4 v3, 0x0

    .line 192
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 193
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 194
    .local v0, childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 195
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v9, v9, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 200
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 201
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 205
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 208
    const/16 v6, 0xc8

    .line 209
    .local v6, minWidth:I
    const/16 v5, 0x14

    .line 210
    .local v5, minHeight:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 211
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 212
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 213
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 217
    .end local v5           #minHeight:I
    .end local v6           #minWidth:I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_4

    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 219
    .restart local v1       #d:Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x0

    .line 220
    .restart local v4       #maxWidth:I
    const/4 v3, 0x0

    .line 221
    .restart local v3       #maxHeight:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 222
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 223
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 224
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 226
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v1, v9, v9, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 227
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 228
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    .restart local v0       #childDrawable:Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 230
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 232
    .end local v0           #childDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v2           #i:I
    .end local v3           #maxHeight:I
    .end local v4           #maxWidth:I
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 233
    const/16 v6, 0xc8

    .line 234
    .restart local v6       #minWidth:I
    const/16 v5, 0x14

    .line 235
    .restart local v5       #minHeight:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 236
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 237
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    .line 238
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 240
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

    .line 335
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mEnabled:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mAlpha:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 346
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->save(I)I

    .line 348
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleY:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionX:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionY:F

    add-float/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 349
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionX:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionY:F

    add-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 351
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 352
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mAlpha:F

    mul-float/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 353
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 359
    :cond_2
    const/4 v0, 0x0

    .line 360
    .local v0, offsetX:F
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    float-to-int v4, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 361
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v10, v4

    .line 363
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    float-to-int v4, v4

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 364
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v9, v4

    .line 366
    :cond_4
    const/4 v1, 0x0

    .line 367
    .local v1, offsetY:F
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    float-to-int v4, v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 368
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v10, v4

    .line 370
    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    float-to-int v4, v4

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 371
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v9, v4

    .line 374
    :cond_6
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionX:F

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    add-float v2, v4, v0

    .line 375
    .local v2, transX:F
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionY:F

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    add-float v3, v4, v1

    .line 378
    .local v3, transY:F
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->save(I)I

    .line 382
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRotationDeg:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionX:F

    add-float/2addr v5, v6

    add-float/2addr v5, v0

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionY:F

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 384
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionX:F

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionY:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    add-float/2addr v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 388
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mAlpha:F

    mul-float/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 389
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 390
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public dumpInfo()V
    .locals 3

    .prologue
    .line 396
    const-string v0, "TargetDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TargetInfo::::scaleX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mScaleY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mAlpha:F

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mResourceId:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRotationDeg:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

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
    .line 283
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 116
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 118
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return v1
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 127
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 129
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 130
    .local v2, states:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 131
    aget v3, v2, v1

    const v4, 0x101009c

    if-ne v3, v4, :cond_0

    .line 132
    const/4 v3, 0x1

    .line 136
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    .end local v1           #i:I
    .end local v2           #states:[I
    :goto_1
    return v3

    .line 130
    .restart local v0       #d:Landroid/graphics/drawable/StateListDrawable;
    .restart local v1       #i:I
    .restart local v2       #states:[I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
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
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mEnabled:Z

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
    .line 279
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mAlpha:F

    .line 280
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    :cond_0
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 260
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 80
    if-nez p2, :cond_1

    move-object v0, v1

    .line 82
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->resizeDrawables()V

    .line 84
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 85
    return-void

    .line 80
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

    .line 90
    if-nez p2, :cond_1

    move-object v1, v3

    .line 92
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    if-nez p3, :cond_3

    move-object v0, v3

    .line 95
    .local v0, bgDrawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->resizeDrawablesAndBackground()V

    .line 97
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setState([I)V

    .line 98
    return-void

    .line 90
    .end local v0           #bgDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v2, v3

    .line 92
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mEnabled:Z

    .line 401
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPositionX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 303
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionX:F

    .line 304
    return-void
.end method

.method public setPositionY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 307
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mPositionY:F

    .line 308
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "rotationDeg"

    .prologue
    .line 319
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mRotationDeg:F

    .line 320
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 271
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleX:F

    .line 272
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 275
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mScaleY:F

    .line 276
    return-void
.end method

.method public setState([I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 103
    .local v0, d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 106
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 108
    .restart local v0       #d:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 110
    .end local v0           #d:Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 263
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationX:F

    .line 264
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 267
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->mTranslationY:F

    .line 268
    return-void
.end method
