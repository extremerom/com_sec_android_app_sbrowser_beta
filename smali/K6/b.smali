.class public final synthetic LK6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LK6/b;->a:I

    iput-object p2, p0, LK6/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget v0, p0, LK6/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LK6/b;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {p0, p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->a(Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, LK6/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->b(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;Landroid/view/View;Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, LK6/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, LK6/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->m(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;Landroid/view/View;Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, LK6/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->i(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;Landroid/view/View;Z)V

    return-void

    :pswitch_4
    iget-object p0, p0, LK6/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->b(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;Landroid/view/View;Z)V

    return-void

    :pswitch_5
    iget-object p0, p0, LK6/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->d(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/view/View;Z)V

    return-void

    :pswitch_6
    iget-object p0, p0, LK6/b;->b:Ljava/lang/Object;

    check-cast p0, LK6/m;

    iput-boolean p2, p0, LK6/m;->l:Z

    invoke-virtual {p0}, LK6/r;->q()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LK6/m;->t(Z)V

    iput-boolean p1, p0, LK6/m;->m:Z

    :cond_0
    return-void

    :pswitch_7
    iget-object p0, p0, LK6/b;->b:Ljava/lang/Object;

    check-cast p0, LK6/e;

    invoke-virtual {p0}, LK6/e;->u()Z

    move-result p1

    invoke-virtual {p0, p1}, LK6/e;->t(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
