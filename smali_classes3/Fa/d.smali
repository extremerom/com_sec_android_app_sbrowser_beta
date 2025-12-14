.class public final synthetic LFa/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LFa/d;->a:I

    iput-object p2, p0, LFa/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, LFa/d;->a:I

    iget-object p0, p0, LFa/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->d(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->c(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->y(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->b(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
