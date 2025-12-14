.class Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;

.field final synthetic val$callback:Lorg/chromium/ui/permissions/PermissionCallback;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;[Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$1;->this$0:Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;

    iput-object p2, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$1;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$1;->val$callback:Lorg/chromium/ui/permissions/PermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$1;->val$permissions:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$1;->val$permissions:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$1;->this$0:Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;

    aget-object v3, v3, v2

    invoke-virtual {v4, v3}, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$1;->val$callback:Lorg/chromium/ui/permissions/PermissionCallback;

    invoke-interface {p0, v3, v0}, Lorg/chromium/ui/permissions/PermissionCallback;->onRequestPermissionsResult([Ljava/lang/String;[I)V

    return-void
.end method
