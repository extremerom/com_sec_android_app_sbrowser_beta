.class public Lcom/sec/android/app/sbrowser/authentication/AuthenticationService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/TerraceServiceBase;
.implements Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBiometricsSupported(Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService$IsBiometricsSupported_Response;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isBiometricsSupported()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService$IsBiometricsSupported_Response;->call(Z)V

    return-void
.end method
