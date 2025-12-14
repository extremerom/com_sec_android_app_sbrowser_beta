.class public final synthetic Lcom/sec/android/app/sbrowser/settings/website/recent_search/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/a;->b:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/a;->b:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi;->b(Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi;->a(Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchUi;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
