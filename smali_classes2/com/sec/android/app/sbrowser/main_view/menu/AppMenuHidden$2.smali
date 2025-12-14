.class Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->clearAllPermissionSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

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

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getAddress()Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->clearPermissionSettingsForOrigin(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
