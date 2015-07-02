.class public Lcom/android/internal/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mTextColor:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 2
    .parameter "context"
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "ordering"
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    .line 52
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 59
    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTextColor:I

    .line 63
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 64
    iput p3, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mId:I

    .line 65
    iput p2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mGroup:I

    .line 66
    iput p4, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mCategoryOrder:I

    .line 67
    iput p5, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mOrdering:I

    .line 68
    iput-object p6, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 69
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 72
    iget-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuTextColor()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTextColor:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 96
    iget-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mOrdering:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 214
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    :goto_0
    return v0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .parameter "actionProvider"

    .prologue
    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "resId"

    .prologue
    .line 240
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .parameter "actionView"

    .prologue
    .line 231
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .parameter "alphaChar"

    .prologue
    .line 136
    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 137
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter "checkable"

    .prologue
    .line 141
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 142
    return-object p0

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter "checked"

    .prologue
    .line 151
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 152
    return-object p0

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter "enabled"

    .prologue
    .line 156
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 157
    return-object p0

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 2
    .parameter "exclusive"

    .prologue
    .line 146
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 147
    return-object p0

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "iconRes"

    .prologue
    .line 167
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    .line 168
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .parameter "icon"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    .line 163
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .parameter "intent"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 174
    return-object p0
.end method

.method public setMenuTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 280
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTextColor:I

    .line 281
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .parameter "numericChar"

    .prologue
    .line 178
    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 179
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "listener"

    .prologue
    .line 277
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "menuItemClickListener"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 184
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 188
    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 189
    iput-char p2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 190
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .parameter "show"

    .prologue
    .line 228
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .parameter "actionEnum"

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 256
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 200
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .parameter "title"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 195
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .parameter "title"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 205
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter "visible"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 210
    return-object p0

    .line 209
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
