.class Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionRequestInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final callback:Lorg/chromium/ui/permissions/PermissionCallback;

.field public final initialShowRationaleState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;[Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V
    .locals 5

    iput-object p1, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;->this$0:Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;->initialShowRationaleState:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;->initialShowRationaleState:Ljava/util/Map;

    invoke-interface {p1, v2}, Lorg/chromium/ui/permissions/AndroidPermissionDelegate;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;->callback:Lorg/chromium/ui/permissions/PermissionCallback;

    return-void
.end method


# virtual methods
.method public getInitialShowRationaleStateFor(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;->initialShowRationaleState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/permissions/AndroidPermissionDelegateWithRequester$PermissionRequestInfo;->initialShowRationaleState:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
