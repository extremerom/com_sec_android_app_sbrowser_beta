.class public final synthetic Lcom/sec/android/app/sbrowser/settings/search/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/search/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/b;->b:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/search/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/b;->b:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->c(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->k(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
