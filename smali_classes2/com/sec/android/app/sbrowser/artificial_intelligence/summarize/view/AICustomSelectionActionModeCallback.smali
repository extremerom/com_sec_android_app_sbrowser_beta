.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0002%&B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u001f\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008 \u0010!R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010#R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010$\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;",
        "Landroid/view/ActionMode$Callback;",
        "Landroid/content/Context;",
        "context",
        "Landroid/widget/TextView;",
        "textView",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;",
        "itemCallback",
        "<init>",
        "(Landroid/content/Context;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;)V",
        "",
        "retrieveSelectedText",
        "()Ljava/lang/String;",
        "selectedText",
        "",
        "onWebSearch",
        "(Ljava/lang/String;)Z",
        "query",
        "sanitizeQuery",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Landroid/view/ActionMode;",
        "mode",
        "Landroid/view/Menu;",
        "menu",
        "onCreateActionMode",
        "(Landroid/view/ActionMode;Landroid/view/Menu;)Z",
        "onPrepareActionMode",
        "Landroid/view/MenuItem;",
        "item",
        "onActionItemClicked",
        "(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z",
        "Ldb/r;",
        "onDestroyActionMode",
        "(Landroid/view/ActionMode;)V",
        "Landroid/content/Context;",
        "Landroid/widget/TextView;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;",
        "Companion",
        "ItemCallback",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemCallback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemCallback"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->itemCallback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;

    return-void
.end method

.method private final onWebSearch(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onWebSearch]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AICustomSelectionActionModeCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->sanitizeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->context:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->context:Landroid/content/Context;

    const-string v5, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v4, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "create_new_tab"

    const/4 v0, 0x1

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.android.browser.application_id"

    const-string v4, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[onWebSearch]: ActivityNotFoundException {"

    const-string v0, "}"

    invoke-static {p1, p0, v0, v1}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private final retrieveSelectedText()Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "[retrieveSelectedText]: selStart="

    const-string v3, ", selEnd="

    const-string v4, "AICustomSelectionActionModeCallback"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private final sanitizeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[sanitizeQuery]: Truncating over-sized query ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AICustomSelectionActionModeCallback"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "\u2026"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->SELECT_ALL:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->itemCallback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;->onSelectAll()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->WEB_SEARCH:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->retrieveSelectedText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->onWebSearch(Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menu"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->SHARE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->getValue()I

    move-result p1

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->WEB_SEARCH:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$Companion$ItemID;->getValue()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    const v2, 0x7f1410e3

    const/4 v3, 0x0

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p2, v3, v0, v1, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->itemCallback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;->setTextSelectionState(Z)V

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback;->itemCallback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AICustomSelectionActionModeCallback$ItemCallback;->setTextSelectionState(Z)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "mode"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "menu"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
