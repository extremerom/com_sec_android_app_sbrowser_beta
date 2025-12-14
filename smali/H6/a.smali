.class public final synthetic LH6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, LH6/a;->a:I

    iput-object p1, p0, LH6/a;->b:Ljava/lang/Object;

    iput-object p2, p0, LH6/a;->c:Ljava/lang/Object;

    iput-object p3, p0, LH6/a;->d:Ljava/lang/Object;

    iput-object p4, p0, LH6/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, LH6/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;

    iget-object v1, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object v2, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/IntConsumer;

    invoke-static {v1, v0, v2, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->c(Lorg/chromium/content/browser/input/ThreadedInputConnection;Lorg/chromium/blink/mojom/StylusWritingGestureData;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-object v1, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v2, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast p0, [B

    invoke-static {v0, v1, v2, p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->m(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B)V

    return-void

    :pswitch_1
    iget-object v0, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg3/f;

    iget-object v3, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v3, Lo3/j;

    iget-object v3, v3, Lo3/j;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lg3/f;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v1, Lf3/c;

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    invoke-static {v1, p0, v0}, Lg3/h;->b(Lf3/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/TerraceHelper;

    iget-object v1, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/base/library_loader/ProcessInitException;

    iget-object v2, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/terrace/TerraceHelper;->b(Lcom/sec/terrace/TerraceHelper;Lorg/chromium/base/library_loader/ProcessInitException;Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->c(Landroid/content/Context;Landroid/net/Uri;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v1, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->o(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/util/List;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v1, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v2, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->l(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;[Ljava/lang/Object;Ljava/util/List;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object p0, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->k(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;

    iget-object v1, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->a(Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/stub/StubData;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LH6/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v1, v0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/scloud/lib/setting/p;

    iget-object v2, p0, LH6/a;->c:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, LH6/a;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/scloud/lib/setting/p;->a(Landroid/net/Uri;Ljava/util/List;)Lcom/samsung/android/scloud/lib/setting/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle request after policy verification: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/lib/setting/n;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " , "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "LibSyncScheduleManager"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/samsung/android/scloud/lib/setting/e;->h(Lcom/samsung/android/scloud/lib/setting/f;)V

    return-void

    :pswitch_a
    iget-object v0, p0, LH6/a;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LH6/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LH6/a;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget-object v0, v2, LH6/m;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x64

    const/16 v3, 0x2c

    if-eqz v0, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    if-eqz v0, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move v8, v1

    :goto_3
    invoke-virtual {v2, v6, v8, v5}, LH6/m;->f(IILandroid/view/View;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v2, LH6/m;->i:LH6/l;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    sget v3, LH6/m;->v:I

    add-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    new-instance v3, Lr1/f;

    sget-object v4, Lr1/e;->n:Lr1/b;

    invoke-direct {v3, v1, v4}, Lr1/f;-><init>(Ljava/lang/Object;LG5/C;)V

    invoke-virtual {v3}, Lr1/f;->g()V

    new-instance v1, Lr1/g;

    invoke-direct {v1}, Lr1/g;-><init>()V

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-virtual {v1, v4}, Lr1/g;->b(F)V

    invoke-virtual {v1, v0}, Lr1/g;->a(F)V

    iput-object v1, v3, Lr1/f;->u:Lr1/g;

    sget v0, LH6/m;->v:I

    int-to-float v0, v0

    const/4 v1, 0x0

    sub-float/2addr v1, v0

    invoke-virtual {v3, v1}, Lr1/f;->f(F)V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, v3, Lr1/e;->a:F

    invoke-virtual {v3}, Lr1/f;->h()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, LH6/b;

    iget-object v1, p0, LH6/a;->d:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    iget-object p0, p0, LH6/a;->e:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Landroid/widget/Button;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, LH6/b;-><init>(LH6/m;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/snackbar/SnackbarContentLayout;IIII)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
