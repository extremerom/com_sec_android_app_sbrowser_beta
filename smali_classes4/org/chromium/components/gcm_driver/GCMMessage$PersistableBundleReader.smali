.class Lorg/chromium/components/gcm_driver/GCMMessage$PersistableBundleReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/gcm_driver/GCMMessage$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/gcm_driver/GCMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistableBundleReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/components/gcm_driver/GCMMessage$Reader<",
        "Landroid/os/PersistableBundle;",
        ">;"
    }
.end annotation


# virtual methods
.method public hasKey(Landroid/os/PersistableBundle;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/gcm_driver/GCMMessage$PersistableBundleReader;->hasKey(Landroid/os/PersistableBundle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public readString(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/gcm_driver/GCMMessage$PersistableBundleReader;->readString(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readStringArray(Landroid/os/PersistableBundle;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readStringArray(Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/gcm_driver/GCMMessage$PersistableBundleReader;->readStringArray(Landroid/os/PersistableBundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
