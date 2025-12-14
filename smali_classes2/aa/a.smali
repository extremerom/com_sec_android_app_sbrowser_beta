.class public final synthetic Laa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Laa/a;->a:I

    iput-object p3, p0, Laa/a;->c:Ljava/lang/Object;

    iput p1, p0, Laa/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Laa/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Laa/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;

    iget p0, p0, Laa/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;ILandroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Laa/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsOptionItemAdapter;

    iget p0, p0, Laa/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsOptionItemAdapter;->a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsOptionItemAdapter;ILandroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Laa/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;

    iget p0, p0, Laa/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;ILandroid/view/View;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Laa/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget p0, p0, Laa/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarUtil;->a(Landroid/content/Context;ILandroid/view/View;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Laa/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    iget p0, p0, Laa/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->a(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;ILandroid/view/View;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Laa/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;

    iget p0, p0, Laa/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarBottombar;ILandroid/view/View;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Laa/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;

    iget p0, p0, Laa/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/LanguagePickerSpinnerAdapter;ILandroid/view/View;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Laa/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;

    iget p0, p0, Laa/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;ILandroid/view/View;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Laa/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;

    iget p0, p0, Laa/a;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;->b(Lcom/sec/android/app/sbrowser/app_banner/AppBannerManagerForExternal;ILandroid/view/View;)V

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
