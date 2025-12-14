.class public Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;
.super Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;,
        Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$UserDataFactoryLazyHolder;
    }
.end annotation


# static fields
.field static final CLIPBOARD_DRAWABLE:I

.field private static final COPY_DRAWABLE:I

.field private static final CUT_DRAWABLE:I

.field private static final DICTIONARY_DRAWABLE:I

.field static final ID_CLOSE:I

.field static final ID_WRITING_TOOLKIT:I

.field static final PASTE_AS_PLAIN_TEXT_DRAWABLE:I

.field static final PASTE_DRAWABLE:I

.field static final SELECTALL_DRAWABLE:I

.field private static final SHARE_DRAWABLE:I

.field static final STR_CLIPBOARD:I

.field static final STR_CLOSE:I

.field static final STR_SHARE:I

.field private static final TRANSLATE_DRAWABLE:I

.field private static final WEBSEARCH_DRAWABLE:I

.field private static final WRITING_TOOLKIT_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private mFindEnabled:Z

.field private mInputMethodChangeObserver:Landroid/database/ContentObserver;

.field private mIsInExtension:Z

.field private mLongPressDragSelection:Z

.field private mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

.field private mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

.field private mUrlForLinkToHighlight:Ljava/lang/String;

.field private mWebContentsXOffsetPx:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.honeyboard"

    const-string v2, "com.samsung.android.writingtoolkit.view.WritingToolkitActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->WRITING_TOOLKIT_COMPONENT:Landroid/content/ComponentName;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "close"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->STR_CLOSE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_clipboard_title_text"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->STR_CLIPBOARD:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "share"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->STR_SHARE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_floating_popup_button_ic_cut"

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->CUT_DRAWABLE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_floating_popup_button_ic_copy"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->COPY_DRAWABLE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_floating_popup_button_ic_paste"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->PASTE_DRAWABLE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_floating_popup_button_ic_share"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->SHARE_DRAWABLE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_floating_popup_button_ic_clipboard"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->CLIPBOARD_DRAWABLE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_floating_popup_button_ic_paste_as_plain_text"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->PASTE_AS_PLAIN_TEXT_DRAWABLE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_floating_popup_button_ic_websearch"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->WEBSEARCH_DRAWABLE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_floating_popup_button_ic_translate"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->TRANSLATE_DRAWABLE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_floating_popup_button_ic_dictionary"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->DICTIONARY_DRAWABLE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_floating_popup_button_ic_selectall"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->SELECTALL_DRAWABLE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "floatingToolbarClose"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->ID_CLOSE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "writing_toolkit"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->ID_WRITING_TOOLKIT:I

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mFindEnabled:Z

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->initTinSelectionPopupControllerImpl()V

    return-void
.end method

.method private constructor <init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/PopupController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/PopupController;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mFindEnabled:Z

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->initTinSelectionPopupControllerImpl()V

    return-void
.end method

.method private checkPlatformEnabledActionItems(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "process_text_manager_apps"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static createForTesting(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/PopupController;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/PopupController;)V

    return-object v0
.end method

.method private static createProcessTextIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    return-object p0
.end method

.method private getInputMethodChangeObserver()Landroid/database/ContentObserver;
    .locals 2

    new-instance v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$1;-><init>(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mInputMethodChangeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private getPackageNames(Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static getSupportedOnClickListener(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sec/terrace/content/browser/e;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/e;-><init>(Landroid/app/PendingIntent;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initExtensionHandler()V
    .locals 3

    new-instance v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$2;

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$2;-><init>(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    return-void
.end method

.method private initTinSelectionPopupControllerImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->initExtensionHandler()V

    return-void
.end method

.method private isContentSchemeUrl()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getVisibleUrl()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/base/ContentUriUtils;->isContentUri(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isEditableNodeWithoutSelection()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSecClipboardSupported()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTextSizeWithinMaxLimit(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWritingToolkitActive()Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->lambda$getSupportedOnClickListener$0(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$getSupportedOnClickListener$0(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setActivityOptionsBackgroundActivityStartAllowAlways(Landroid/app/ActivityOptions;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TinSelnPopupCtrl"

    const-string v0, "Error creating OnClickListener from PendingIntent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isWritingToolkitActive()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->showTextHandlesAndActionModeIfNecessary()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->unregisterInputMethodChangeObserver()V

    return-void
.end method

.method private removeUnNecessaryTextProcessingMenu(Landroid/view/Menu;)V
    .locals 6

    invoke-static {}, Lorg/chromium/base/PackageManagerUtils;->queryAllWebBrowsersInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getPackageNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/PackageManagerUtils;->queryAllLaunchersInfo()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getPackageNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    sget v5, Lcom/sec/terrace/R$id;->tin_select_action_popup_text_processing_menus:I

    if-ne v4, v5, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private secDictionaryAction()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "keyword"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "force"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendSALogging(I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->getStylusTextSelectionFragmentCount()I

    move-result v0

    const v1, 0x1020021

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    :cond_0
    if-lez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x1020022

    const-string v2, "2072"

    const-string v3, "201"

    const-string v4, "202"

    if-eq p1, v1, :cond_c

    sget v1, Lcom/sec/terrace/R$id;->select_action_menu_paste:I

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x1020031

    if-eq p1, v1, :cond_a

    sget v1, Lcom/sec/terrace/R$id;->select_action_menu_paste_as_plain_text:I

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x102001f

    if-ne p1, v1, :cond_5

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_4

    move-object v3, v4

    :cond_4
    const-string p0, "9204"

    invoke-static {v3, p0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getWritingToolkitId()I

    move-result v0

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_6

    move-object v3, v4

    :cond_6
    const-string p0, "2032"

    invoke-static {v3, p0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/sec/terrace/browser/TinSALoggingConstants;->EVENT_MAP_ACTION_MODE_ITEMS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_9

    move-object v3, v4

    :cond_9
    invoke-static {v3, p1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_b

    move-object v3, v4

    :cond_b
    const-string p0, "2"

    invoke-static {v3, v2, p0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_d

    move-object v3, v4

    :cond_d
    const-string p0, "1"

    invoke-static {v3, v2, p0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private shareInternal()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->getAllSelectedTexts()Ljava/lang/String;

    move-result-object v0

    const v1, 0x186a0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getSelectionRectRelativeToContainingView()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-static {v2, v0, v3, v1}, Lcom/sec/terrace/TinTerraceInternals;->showShareDialog(Landroid/content/Context;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->getStylusTextSelectionFragmentCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "202"

    goto :goto_0

    :cond_2
    const-string p0, "201"

    :goto_0
    const-string v1, "2237"

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private showClipboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->showClipboard()V

    return-void
.end method

.method private showTextHandlesAndActionModeIfNecessary()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setTextHandlesTemporarilyHidden(Z)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->showActionModeOrClearOnFailure()V

    :cond_0
    return-void
.end method

.method private unregisterInputMethodChangeObserver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mInputMethodChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mInputMethodChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mInputMethodChangeObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to unregister input method change observer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "TinSelnPopupCtrl"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private webSearch()V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->webSearch(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addActionMenuItemsIfNecessary(Landroid/view/Menu;)V
    .locals 16
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectionPassword()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isMultiSelectionInProgress()Z

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isEditableNodeWithoutSelection()Z

    move-result v5

    const v7, 0x1040019

    const v8, 0x1020031

    const v9, 0x104000b

    const v10, 0x1020022

    const v11, 0x104000d

    const v12, 0x102001f

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v6, 0x6

    if-eqz v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->canSelectAll()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v3, v12, v13, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->SELECTALL_DRAWABLE:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->canPaste()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v3, v10, v15, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->PASTE_DRAWABLE:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->canPasteAsPlainText()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v3, v8, v14, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->PASTE_AS_PLAIN_TEXT_DRAWABLE:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    iget-object v2, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/terrace/browser/TinClipboardUtils;->canShowSecClipboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->STR_CLIPBOARD:I

    const/4 v4, 0x5

    invoke-interface {v1, v3, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->CLIPBOARD_DRAWABLE:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    iget-object v0, v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->canExtractText()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/sec/terrace/R$string;->tin_select_action_popup_extract_text:I

    const/4 v2, 0x7

    invoke-interface {v1, v3, v2, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_4
    return-void

    :cond_5
    if-eqz v2, :cond_6

    iget-object v5, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v5}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->canSelectAll()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    sget v5, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    const/16 v7, 0x8

    invoke-interface {v1, v5, v12, v7, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v7, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v11, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->SELECTALL_DRAWABLE:I

    invoke-virtual {v7, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isWritingToolkitSupported()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_8

    if-nez v3, :cond_8

    sget v5, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getWritingToolkitId()I

    move-result v11

    const-string v12, ""

    invoke-interface {v1, v5, v11, v7, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v15}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_8
    if-eqz v2, :cond_9

    if-nez v3, :cond_9

    sget v5, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    const v11, 0x1020020

    const v12, 0x1040003

    invoke-interface {v1, v5, v11, v14, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v11, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v12, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->CUT_DRAWABLE:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_9
    if-eqz v2, :cond_a

    if-nez v3, :cond_b

    :cond_a
    sget v5, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    const v11, 0x1020021

    const v12, 0x1040001

    invoke-interface {v1, v5, v11, v13, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v11, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v12, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->COPY_DRAWABLE:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_c

    sget v5, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    const/4 v11, 0x5

    invoke-interface {v1, v5, v10, v11, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v9, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->PASTE_DRAWABLE:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isManageAppsSupported()Z

    move-result v5

    const/16 v9, 0x9

    if-eqz v5, :cond_d

    const-string v5, "com.samsung.android.app.interpreter"

    invoke-virtual {v0, v5}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectionPassword()Z

    move-result v5

    if-nez v5, :cond_d

    sget v5, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    sget v10, Lcom/sec/terrace/R$string;->tin_select_action_popup_sss_translate:I

    invoke-interface {v1, v5, v9, v6, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->canPasteAsPlainText()Z

    move-result v5

    if-eqz v5, :cond_e

    sget v5, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    const/4 v10, 0x7

    const v11, 0x1040019

    invoke-interface {v1, v5, v8, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v8, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v10, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->PASTE_AS_PLAIN_TEXT_DRAWABLE:I

    invoke-virtual {v8, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->canShowSecClipboard()Z

    move-result v5

    if-eqz v5, :cond_f

    sget v5, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    sget v8, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->STR_CLIPBOARD:I

    const/4 v10, 0x5

    invoke-interface {v1, v5, v10, v9, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v8, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v9, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->CLIPBOARD_DRAWABLE:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result v5

    if-nez v5, :cond_10

    if-nez v2, :cond_10

    if-nez v4, :cond_10

    sget v5, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    const/16 v8, 0xa

    sget v9, Lcom/sec/terrace/R$string;->tin_select_action_popup_websearch:I

    invoke-interface {v1, v5, v14, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v8, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v9, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->WEBSEARCH_DRAWABLE:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_10
    if-nez v3, :cond_11

    invoke-virtual {v0, v7}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isSelectActionModeAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_11

    sget v3, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    const/16 v5, 0xb

    sget v8, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->STR_SHARE:I

    invoke-interface {v1, v3, v7, v5, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v5, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->SHARE_DRAWABLE:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_11
    if-nez v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isMultiSelectionInProgress()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    const v5, 0x186a0

    invoke-direct {v0, v3, v5}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isTextSizeWithinMaxLimit(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isContentSchemeUrl()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {v3}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->shouldAllowAddToNote()Z

    move-result v3

    if-eqz v3, :cond_12

    sget v3, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    const/16 v5, 0xc

    sget v7, Lcom/sec/terrace/R$string;->tin_select_action_popup_add_to_note:I

    invoke-interface {v1, v3, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_12
    iget-boolean v3, v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mFindEnabled:Z

    if-eqz v3, :cond_13

    if-nez v2, :cond_13

    if-nez v4, :cond_13

    iget-boolean v2, v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mIsInExtension:Z

    if-nez v2, :cond_13

    sget v2, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    const/16 v3, 0xd

    sget v4, Lcom/sec/terrace/R$string;->tin_select_action_popup_find:I

    invoke-interface {v1, v2, v15, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/terrace/R$drawable;->tin_select_action_popup_find:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_13
    return-void
.end method

.method public addMenuItems(Landroid/content/Context;Landroid/view/Menu;Landroid/view/textclassifier/TextClassification;Ljava/util/List;)V
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/Menu;",
            "Landroid/view/textclassifier/TextClassification;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const v0, 0x1020041

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez p1, :cond_3

    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteAction;

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p4, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    const/4 v3, 0x1

    move v4, v3

    :goto_2
    if-ge v4, p1, :cond_7

    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/RemoteAction;

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getSupportedOnClickListener(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v4, 0x32

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {p2, v0, v2, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v5}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez p4, :cond_5

    move-object v5, v1

    goto :goto_3

    :cond_5
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_6
    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCustomActionMenuItemClickListeners:Ljava/util/Map;

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    return-void
.end method

.method public canPaste()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isSecClipboardSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/terrace/browser/TinClipboardUtils;->canPaste(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->canPaste()Z

    move-result p0

    return p0
.end method

.method public canPasteAsPlainText()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isSecClipboardSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->canPasteAsPlainText()Z

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCanEditRichly:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/TinClipboardUtils;->canPasteAsPlainText()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canShowSecClipboard()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/terrace/browser/TinClipboardUtils;->canShowSecClipboard(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public clearSelection()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->clearMultiSelection()V

    invoke-super {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->clearSelection()V

    return-void
.end method

.method public createActionMenu(Landroid/view/Menu;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->updateAssistMenuItem(Landroid/view/Menu;)V

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->addActionMenuItemsIfNecessary(Landroid/view/Menu;)V

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lorg/chromium/content_public/browser/SelectionClient$Result;->textClassification:Landroid/view/textclassifier/TextClassification;

    iget-object v1, v1, Lorg/chromium/content_public/browser/SelectionClient$Result;->additionalIcons:Ljava/util/List;

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->addMenuItems(Landroid/content/Context;Landroid/view/Menu;Landroid/view/textclassifier/TextClassification;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectionPassword()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isMultiSelectionInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->initializeTextProcessingMenu(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isManageAppsSupported()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->removeUnNecessaryTextProcessingMenu(Landroid/view/Menu;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->isExtensionSupported()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "TinSelnPopupCtrl"

    const-string p1, "Extensions are not supported."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->initializeExtensionMenu(Landroid/view/Menu;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public doAssistAction()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/SelectionClient$Result;->hasNamedAction()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    iget-object v1, v0, Lorg/chromium/content_public/browser/SelectionClient$Result;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, v0, Lorg/chromium/content_public/browser/SelectionClient$Result;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    iget-object p0, p0, Lorg/chromium/content_public/browser/SelectionClient$Result;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getLinkForAddToNote()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mUrlForLinkToHighlight:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getVisibleUrl()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mUrlForLinkToHighlight:Ljava/lang/String;

    return-object p0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSelectionRectRelativeToContainingView()Landroid/graphics/Rect;
    .locals 5

    invoke-super {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectionRectRelativeToContainingView()Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mIsInExtension:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v3, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    iget p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mWebContentsXOffsetPx:I

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public getSemActionModeType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->getSemActionModeType()I

    move-result p0

    return p0
.end method

.method public getTranslationIntent()Landroid/content/Intent;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sec.intent.action.TRANSLATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.android.app.interpreter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "needsTranslatedTextResult"

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getWritingToolkitId()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->ID_WRITING_TOOLKIT:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public hideActionMode(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsInHandleDragging:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hideActionMode(Z)V

    return-void
.end method

.method public initializeTextProcessingMenu(Landroid/view/Menu;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isSelectActionModeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/chromium/base/PackageManagerUtils;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isManageAppsSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->checkPlatformEnabledActionItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_1
    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_8

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    iget-object v5, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    sget v6, Lcom/sec/terrace/R$id;->tin_select_action_popup_text_processing_menus:I

    add-int/lit8 v7, v3, 0x64

    invoke-interface {p1, v6, v2, v7, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.app.dictionary"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "com.diotek.sec.lookup.dictionary"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const-string v7, "com.google.android.apps.translate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.sec.android.app.translator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v4, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->TRANSLATE_DRAWABLE:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v4, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->DICTIONARY_DRAWABLE:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_3
    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isManageAppsSupported()Z

    move-result p0

    if-eqz p0, :cond_a

    sget p0, Lcom/sec/terrace/R$id;->tin_select_action_popup_text_processing_menus:I

    add-int/lit8 v3, v3, 0x64

    sget v0, Lcom/sec/terrace/R$string;->tin_select_action_popup_manage_apps:I

    const/16 v1, 0x8

    invoke-interface {p1, p0, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_a
    return-void
.end method

.method public isLongPressDragSelection()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mLongPressDragSelection:Z

    return p0
.end method

.method public isManageAppsSupported()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getPlatformOneUIVersion()I

    move-result p0

    const v0, 0xeac4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiSelectionInProgress()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->getStylusTextSelectionFragmentCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "Package not available : "

    const-string v1, "TinSelnPopupCtrl"

    invoke-static {p0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSelectActionBarShowing()Z
    .locals 1

    invoke-super {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectActionBarShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->isExtensionSubmenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->getCurrentVisibleViewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getSelectionRectRelativeToContainingView()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectActionModeAllowed(I)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectActionModeAllowed(I)Z

    move-result p0

    return p0
.end method

.method public isWritingToolkitSupported()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isParentalControlEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isPlatformAiFeaturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getWritingToolkitId()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isAiFeatureEnabledInKnoxEDM()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    sget-object v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->WRITING_TOOLKIT_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x20000

    invoke-static {p0, v0}, Lorg/chromium/base/PackageManagerUtils;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public launchWritingToolkit()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selectedText"

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->registerInputMethodChangeObserver()V

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    const-string v2, "actionShowToolKitHbd"

    invoke-virtual {v0, p0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 13

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Selection action mode onActionItemClicked: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TinSelnPopupCtrl"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->sendSALogging(I)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getSemActionModeType()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x5

    if-ne v3, v4, :cond_5

    if-ne v0, v5, :cond_1

    iget-object p2, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->findOnPage(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :cond_1
    if-ne v0, v7, :cond_2

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->showClipboard()V

    return v1

    :cond_2
    if-ne v0, v6, :cond_3

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->secDictionaryAction()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :cond_3
    sget v2, Lcom/sec/terrace/R$id;->select_action_menu_copy:I

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->copySelectedTexts()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    :cond_4
    invoke-super {p0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_5
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isEditableNodeWithoutSelection()Z

    move-result v3

    const v4, 0x102001f

    const v8, 0x1020031

    const v9, 0x1020022

    const/4 v10, 0x0

    if-eqz v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Paste popup action mode onActionItemClicked: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    if-ne p2, v9, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->paste()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_6
    if-ne p2, v8, :cond_7

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->pasteAsPlainText()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_7
    if-ne p2, v4, :cond_8

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->selectAll()V

    goto :goto_0

    :cond_8
    if-ne p2, v7, :cond_9

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->showClipboard()V

    goto :goto_0

    :cond_9
    const/4 v0, 0x7

    if-ne p2, v0, :cond_a

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->extractTextMenu()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_0
    return v1

    :cond_a
    return v10

    :cond_b
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    sget v11, Lcom/sec/terrace/R$id;->tin_select_action_popup_assist_items:I

    const v12, 0x1020041

    if-ne v3, v11, :cond_c

    if-ne v0, v12, :cond_c

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->doAssistAction()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :cond_c
    if-ne v0, v4, :cond_d

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->clearMultiSelection()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->selectAll()V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getWritingToolkitId()I

    move-result v4

    if-ne v0, v4, :cond_e

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->launchWritingToolkit()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyActionModeAndKeepSelection()V

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setTextHandlesTemporarilyHidden(Z)V

    goto/16 :goto_1

    :cond_e
    const v4, 0x1020020

    if-ne v0, v4, :cond_10

    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/terrace/browser/TinClipboardUtils;->handleClipboardActionIfRestrictedByKnoxPolicy(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    return v1

    :cond_f
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->cut()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :cond_10
    const v4, 0x1020021

    if-ne v0, v4, :cond_12

    iget-object p2, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/terrace/browser/TinClipboardUtils;->handleClipboardActionIfRestrictedByKnoxPolicy(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    return v1

    :cond_11
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->copySelectedTexts()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :cond_12
    if-ne v0, v9, :cond_13

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->paste()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :cond_13
    if-ne v0, v8, :cond_14

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->pasteAsPlainText()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :cond_14
    if-ne v0, v1, :cond_15

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->shareInternal()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :cond_15
    const/16 v4, 0x8

    if-ne v0, v4, :cond_16

    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v2, "com.samsung.android.settings.display.SecProcessTextManageAppsFragment"

    invoke-direct {p2, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :cond_16
    const/4 v4, 0x3

    if-ne v0, v4, :cond_17

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->webSearch()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :cond_17
    if-ne v0, v7, :cond_18

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->showClipboard()V

    goto/16 :goto_1

    :cond_18
    if-ne v0, v5, :cond_19

    iget-object p2, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->findOnPage(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :cond_19
    if-ne v0, v6, :cond_1a

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->secDictionaryAction()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :cond_1a
    const/4 v4, 0x6

    if-ne v0, v4, :cond_1b

    iget-object p2, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getLinkForAddToNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, v2, p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->addToNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :cond_1b
    sget v4, Lcom/sec/terrace/R$id;->tin_select_action_popup_text_processing_menus:I

    if-ne v3, v4, :cond_1e

    invoke-interface {p2}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->processText(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.sec.android.app.dictionary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "com.diotek.sec.lookup.dictionary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1d

    :cond_1c
    invoke-direct {p0, v6}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->sendSALogging(I)V

    :cond_1d
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :cond_1e
    if-ne v3, v12, :cond_1f

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, p2, v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->performCustomMenuAction(Landroid/view/MenuItem;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :cond_1f
    sget p1, Lcom/sec/terrace/R$id;->tin_select_action_popup_extension_menus:I

    if-ne v3, p1, :cond_21

    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_20

    const-string p0, "onItemClick, extension item - actionView is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->performExtension(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V

    goto :goto_1

    :cond_21
    sget p1, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->ID_CLOSE:I

    if-ne v0, p1, :cond_22

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->finishActionMode()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->clearSelection()V

    goto :goto_1

    :cond_22
    const/16 p1, 0x9

    if-ne v0, p1, :cond_23

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->translate()V

    :goto_1
    return v1

    :cond_23
    return v10
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x12d

    if-ne p1, p2, :cond_1

    const-string p1, "translatedText"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->replace(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroyActionMode()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mUnselectAllOnDismiss:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHasSelection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHasSelection:Z

    :cond_0
    invoke-super {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->onDestroyActionMode()V

    const-string p0, "TinSelnPopupCtrl"

    const-string v0, "Selection action mode is destroyed"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDragUpdate(IFF)V
    .locals 2

    iget v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mWebContentsXOffsetPx:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getDeviceScaleFactor()F

    move-result v1

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    invoke-super {p0, p1, v0, p3}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->onDragUpdate(IFF)V

    return-void
.end method

.method public onLinkToTextHighlightGenerated(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mUrlForLinkToHighlight:Ljava/lang/String;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getSemActionModeType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0

    :cond_0
    sget p1, Lcom/sec/terrace/R$id;->tin_select_action_popup_assist_items:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->removeGroup(I)V

    sget p1, Lcom/sec/terrace/R$id;->tin_select_action_popup_default_items:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->removeGroup(I)V

    sget p1, Lcom/sec/terrace/R$id;->tin_select_action_popup_text_processing_menus:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->removeGroup(I)V

    sget p1, Lcom/sec/terrace/R$id;->tin_select_action_popup_extension_menus:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->removeGroup(I)V

    const p1, 0x1020041

    invoke-interface {p2, p1}, Landroid/view/Menu;->removeGroup(I)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/view/Menu;->removeGroup(I)V

    invoke-virtual {p0, p2}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->createActionMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSelectionEvent(IIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->onSelectionEvent(IIIII)V

    const-string v0, "2188"

    const-wide/16 v1, -0x1

    const-string v3, "201"

    const-string v4, "202"

    const/4 v5, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v5, :cond_6

    const/4 v6, 0x2

    if-eq p1, v6, :cond_5

    const/4 v6, 0x3

    if-eq p1, v6, :cond_4

    const/4 v6, 0x4

    if-eq p1, v6, :cond_3

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    const-string p2, "0075"

    const-string p3, "Text Selection Auto Scroll Started"

    invoke-static {p1, p2, p3, v1, v2}, Lcom/sec/terrace/browser/TinAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v3, v4

    :cond_0
    const-string p1, "2131"

    invoke-static {v3, p1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mMagnifierAnimator:Lorg/chromium/content/browser/selection/MagnifierAnimator;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->handleDragStopped()V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v6, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mLongPressDragSelection:Z

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->updateWritingToolkit()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v3, v4

    :cond_1
    const-string p1, "2006"

    const-string p2, "Text"

    invoke-static {v3, p1, p2}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mLongPressDragSelection:Z

    invoke-virtual {p0, v5}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->hideActionMode(Z)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->resetAndRemoveSubmenuLayout()V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->clearMultiSelection()V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->invalidateContentRect()V

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->clearMultiSelection()V

    iput-boolean v6, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHasSelection:Z

    iput-boolean v6, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mLongPressDragSelection:Z

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mMagnifierAnimator:Lorg/chromium/content/browser/selection/MagnifierAnimator;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->handleDragStopped()V

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->isSpenSelection()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->resetSpenSelection()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v3, v4

    :cond_2
    invoke-static {v3, v0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->invalidateContentRect()V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->repositionAndShowSubmenuIfRequired()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->updateWritingToolkit()V

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->hideSubmenuLayout()V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->resetAndRemoveSubmenuLayout()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->clearMultiSelection()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->clearMultiSelection()V

    :cond_8
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v5, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mHasSelection:Z

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/GestureListenerManagerImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->isScrollInProgress()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectionClient()Lorg/chromium/content_public/browser/SelectionClient;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectionClient()Lorg/chromium/content_public/browser/SelectionClient;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/content_public/browser/SelectionClient;->isSmartClassificationTaskInProgress()Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->showActionModeOrClearOnFailure()V

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    const-string p2, "0174"

    const-string p3, "Select Action Popup Menu show"

    invoke-static {p1, p2, p3, v1, v2}, Lcom/sec/terrace/browser/TinAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_a
    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->isSpenSelection()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->resetSpenSelection()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isIncognito()Z

    move-result p1

    if-eqz p1, :cond_b

    move-object v3, v4

    :cond_b
    invoke-static {v3, v0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setSystemGestureExclusionRectsInternal()V

    :cond_d
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSizeChanged()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isEditableNodeWithoutSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->showActionModeOrClearOnFailure()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->onWindowFocusChanged(Z)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mInputMethodChangeObserver:Landroid/database/ContentObserver;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isWritingToolkitActive()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->showTextHandlesAndActionModeIfNecessary()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->unregisterInputMethodChangeObserver()V

    :cond_0
    return-void
.end method

.method public performCustomMenuAction(Landroid/view/MenuItem;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCustomActionMenuItemClickListeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnClickListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public registerInputMethodChangeObserver()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mInputMethodChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getInputMethodChangeObserver()Landroid/database/ContentObserver;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to register input method change observer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "TinSelnPopupCtrl"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public search()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->webSearch()V

    return-void
.end method

.method public setAsRichlyEditable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCanEditRichly:Z

    return-void
.end method

.method public setClassificationResultForTest(Lorg/chromium/content_public/browser/SelectionClient$Result;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    return-void
.end method

.method public setContextForTest(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setExtensionHandlerForTest(Lcom/sec/terrace/content/browser/TinExtensionHandler;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    return-void
.end method

.method public setFindEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mFindEnabled:Z

    return-void
.end method

.method public setIsInExtension(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mIsInExtension:Z

    return-void
.end method

.method public setMagnifierAnimatorForTest(Lorg/chromium/content/browser/selection/MagnifierAnimator;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mMagnifierAnimator:Lorg/chromium/content/browser/selection/MagnifierAnimator;

    return-void
.end method

.method public setScrollInProgress(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->setScrollInProgress(Z)V

    invoke-super {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setScrollInProgress(Z)V

    return-void
.end method

.method public setSelectionDelegate(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    return-void
.end method

.method public setViewForTest(Landroid/view/View;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public setWebContentsXOffsetPx(I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mWebContentsXOffsetPx:I

    return-void
.end method

.method public setWindowAndroidForTest(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method

.method public share()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->shareInternal()V

    return-void
.end method

.method public shouldUnselectAllOnDismiss()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mUnselectAllOnDismiss:Z

    return p0
.end method

.method public showActionModeOrClearOnFailure()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mTinExtensionHandler:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->shouldShowSubmenu()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexDualMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mLongPressDragSelection:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mIsInHandleDragging:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TinSelnPopupCtrl"

    const-string v2, "Ignoring NPE from ActionMode.invalidate() as workaround for L"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->hideActionMode(Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyActionModeAndKeepSelection()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->startFloatingActionMode()Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setActionMode(Landroid/view/ActionMode;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mUnselectAllOnDismiss:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isActionModeValid()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->clearSelection()V

    :cond_4
    :goto_1
    return-void
.end method

.method public showSelectionMenu(IIIIIIIZZLjava/lang/String;IZZZILorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 2

    invoke-super/range {p0 .. p16}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->showSelectionMenu(IIIIIIIZZLjava/lang/String;IZZZILorg/chromium/content_public/browser/RenderFrameHost;)V

    const/4 v0, 0x5

    move/from16 v1, p15

    if-ne v1, v0, :cond_0

    move-object v0, p0

    iget-object v0, v0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mSelectionDelegate:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->performLongPressHapticFeedbackIfNeeded()V

    :cond_0
    return-void
.end method

.method public startFloatingActionMode()Landroid/view/ActionMode;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getSemActionModeType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCallback:Lorg/chromium/content_public/browser/ActionModeCallback;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mIsInExtension:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->getCurrentTerraceActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCallback:Lorg/chromium/content_public/browser/ActionModeCallback;

    invoke-virtual {v1, p0, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCallback:Lorg/chromium/content_public/browser/ActionModeCallback;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getSemActionModeType()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->mIsInExtension:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->getCurrentTerraceActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mCallback:Lorg/chromium/content_public/browser/ActionModeCallback;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getSemActionModeType()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    const-string p0, "TinSelnPopupCtrl"

    const-string v1, "Selection action mode is started"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/view/ActionMode;->setType(I)V

    :cond_3
    return-object v0
.end method

.method public translate()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getTranslationIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setPreserveSelectionOnNextLossOfFocus(Z)V

    :try_start_0
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x12d

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "TinSelnPopupCtrl"

    const-string v0, "Internet Translate not available"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateAssistMenuItem(Landroid/view/Menu;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/SelectionClient$Result;->hasNamedAction()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/terrace/R$id;->tin_select_action_popup_assist_items:I

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    iget-object v1, v1, Lorg/chromium/content_public/browser/SelectionClient$Result;->label:Ljava/lang/CharSequence;

    const v2, 0x1020041

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mClassificationResult:Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->getPrimaryActionIconForClassificationResult(Lorg/chromium/content_public/browser/SelectionClient$Result;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public updateWritingToolkit()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    invoke-static {v0}, LA2/q;->m(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, LA2/q;->m(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "newSelection"

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->mView:Landroid/view/View;

    const-string v2, "actionUpdateToolKitHbd"

    invoke-virtual {v0, p0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method
