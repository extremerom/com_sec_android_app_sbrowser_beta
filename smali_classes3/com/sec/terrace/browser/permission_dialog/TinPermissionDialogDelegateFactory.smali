.class Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegateFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createFromDialogType(IJLjava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lcom/sec/terrace/browser/permission_dialog/TinStorageAccessPermissionDialogDelegate;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/permission_dialog/TinStorageAccessPermissionDialogDelegate;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
