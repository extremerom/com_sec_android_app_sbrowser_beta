.class public final synthetic Lcom/sec/android/app/sbrowser/settings/website/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/g;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/website/g;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/g;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->a(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->a(Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
