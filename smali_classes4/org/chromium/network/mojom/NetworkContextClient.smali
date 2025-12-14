.class public interface abstract Lorg/chromium/network/mojom/NetworkContextClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendSctAuditingReport_Response;,
        Lorg/chromium/network/mojom/NetworkContextClient$OnGenerateHttpNegotiateAuthToken_Response;,
        Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendDomainReliabilityUpload_Response;,
        Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendReportingReports_Response;,
        Lorg/chromium/network/mojom/NetworkContextClient$OnFileUploadRequested_Response;,
        Lorg/chromium/network/mojom/NetworkContextClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/NetworkContextClient;",
            "Lorg/chromium/network/mojom/NetworkContextClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/NetworkContextClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onCanSendDomainReliabilityUpload(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendDomainReliabilityUpload_Response;)V
.end method

.method public abstract onCanSendReportingReports([Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendReportingReports_Response;)V
.end method

.method public abstract onCanSendSctAuditingReport(Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendSctAuditingReport_Response;)V
.end method

.method public abstract onFileUploadRequested(IZ[Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkContextClient$OnFileUploadRequested_Response;)V
.end method

.method public abstract onGenerateHttpNegotiateAuthToken(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContextClient$OnGenerateHttpNegotiateAuthToken_Response;)V
.end method

.method public abstract onNewSctAuditingReportSent()V
.end method
