.class public final synthetic Lcom/sec/android/app/sbrowser/settings/website/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/l;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/website/l;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/l;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;->a(Lcom/sec/android/app/sbrowser/settings/website/AllowBlockSwitchViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->d(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->f(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/view/View;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->b(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
