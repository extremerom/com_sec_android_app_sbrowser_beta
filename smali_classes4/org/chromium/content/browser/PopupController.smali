.class public Lorg/chromium/content/browser/PopupController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/PopupController$UserDataFactoryLazyHolder;,
        Lorg/chromium/content/browser/PopupController$HideablePopup;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mHideablePopups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/PopupController$HideablePopup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/PopupController;->mHideablePopups:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/PopupController;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/PopupController;
    .locals 2

    const-class v0, Lorg/chromium/content/browser/PopupController;

    invoke-static {}, Lorg/chromium/content/browser/PopupController$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/PopupController;

    return-object p0
.end method

.method public static hideAll(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/chromium/content/browser/PopupController;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/PopupController;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupController;->hideAllPopups()V

    :cond_1
    return-void
.end method

.method public static hidePopupsAndClearSelection(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->fromWebContentsNoCreate(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyActionModeAndUnselect()V

    :cond_1
    invoke-static {p0}, Lorg/chromium/content/browser/PopupController;->hideAll(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public static register(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/PopupController$HideablePopup;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/chromium/content/browser/PopupController;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/PopupController;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/PopupController;->registerPopup(Lorg/chromium/content/browser/PopupController$HideablePopup;)V

    return-void
.end method


# virtual methods
.method public hideAllPopups()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/PopupController;->mHideablePopups:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/PopupController$HideablePopup;

    invoke-interface {v0}, Lorg/chromium/content/browser/PopupController$HideablePopup;->hide()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerPopup(Lorg/chromium/content/browser/PopupController$HideablePopup;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/PopupController;->mHideablePopups:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
