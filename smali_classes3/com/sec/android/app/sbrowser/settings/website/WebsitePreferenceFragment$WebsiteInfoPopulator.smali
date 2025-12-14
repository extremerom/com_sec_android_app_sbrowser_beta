.class public Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$WebsiteInfoPopulator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebsiteInfoPopulator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebsitePermissionsAvailable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->U(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->Z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->displayFilteredList(Ljava/lang/String;)V

    return-void
.end method
