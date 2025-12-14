.class Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPasswordAutofillType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;->getPasswordAutofillType()I

    move-result p0

    return p0
.end method

.method public getUserNameIndex()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;->getUserNameIndex()I

    move-result p0

    return p0
.end method

.method public getUserNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;->getUserNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isReplaceSecBrandAsGalaxy()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p0

    return p0
.end method

.method public setSelectedUserNameIndex(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;->setSelectedUserNameIndex(I)V

    return-void
.end method
