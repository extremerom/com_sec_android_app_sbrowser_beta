.class public Lcom/sec/android/app/sbrowser/autofill/password/PasswordUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static hasSamsungPassLogin()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassPasswordStore;->hasLogin()Z

    move-result v0

    return v0
.end method
