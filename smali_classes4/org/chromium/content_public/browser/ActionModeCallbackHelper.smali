.class public abstract Lorg/chromium/content_public/browser/ActionModeCallbackHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/ActionModeCallbackHelper$EmptyActionCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final EMPTY_CALLBACK:Lorg/chromium/content_public/browser/ActionModeCallbackHelper$EmptyActionCallback;

.field public static final MAX_SEARCH_QUERY_LENGTH:I = 0x3e8

.field public static final MENU_ITEM_PROCESS_TEXT:I = 0x4

.field public static final MENU_ITEM_SHARE:I = 0x1

.field public static final MENU_ITEM_WEB_SEARCH:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/content_public/browser/ActionModeCallbackHelper$EmptyActionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/content_public/browser/ActionModeCallbackHelper$EmptyActionCallback;-><init>(I)V

    sput-object v0, Lorg/chromium/content_public/browser/ActionModeCallbackHelper;->EMPTY_CALLBACK:Lorg/chromium/content_public/browser/ActionModeCallbackHelper$EmptyActionCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isActionModeValid()Z
.end method

.method public abstract onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end method

.method public abstract onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
.end method

.method public abstract onDestroyActionMode()V
.end method

.method public abstract onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
.end method

.method public abstract onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end method
