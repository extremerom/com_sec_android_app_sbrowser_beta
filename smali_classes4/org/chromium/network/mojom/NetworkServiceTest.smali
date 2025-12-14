.class public interface abstract Lorg/chromium/network/mojom/NetworkServiceTest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/NetworkServiceTest$IsHappyEyeballsV3Enabled_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$AllowsGssapiLibraryLoad_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$SetIPv6ProbeResult_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$ResolveOwnHostnameWithSystemDns_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$MakeRequestToServer_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$CreateSimpleCache_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$EnumerateFiles_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$OpenFile_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$SetSctAuditingRetryDelay_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$Log_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$GetEnvironmentVariableValue_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$GetPeerToPeerConnectionsCountChange_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$GetLatestMemoryPressureLevel_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$SetTestDohConfig_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$ReplaceSystemDnsConfig_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$SetAllowNetworkAccessToHostResolutions_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$SetTransportSecurityStateSource_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$MockCertVerifierAddResultForCertAndHost_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$MockCertVerifierSetDefaultResult_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$ForceNetworkQualityEstimatorReportWifiAsSlow2G_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$SimulateNetworkQualityChange_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$SimulateNetworkChange_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$AddRules_Response;,
        Lorg/chromium/network/mojom/NetworkServiceTest$Proxy;
    }
.end annotation


# virtual methods
.method public abstract activateFieldTrial(Ljava/lang/String;)V
.end method

.method public abstract addRules([Lorg/chromium/network/mojom/Rule;Lorg/chromium/network/mojom/NetworkServiceTest$AddRules_Response;)V
.end method

.method public abstract allowsGssapiLibraryLoad(Lorg/chromium/network/mojom/NetworkServiceTest$AllowsGssapiLibraryLoad_Response;)V
.end method

.method public abstract crashOnGetCookieList()V
.end method

.method public abstract crashOnResolveHost(Ljava/lang/String;)V
.end method

.method public abstract createSimpleCache(Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;Lorg/chromium/mojo_base/mojom/FilePath;ZLorg/chromium/network/mojom/NetworkServiceTest$CreateSimpleCache_Response;)V
.end method

.method public abstract enumerateFiles(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/HttpCacheBackendFileOperationsFactory;Lorg/chromium/network/mojom/NetworkServiceTest$EnumerateFiles_Response;)V
.end method

.method public abstract forceNetworkQualityEstimatorReportWifiAsSlow2G(Lorg/chromium/network/mojom/NetworkServiceTest$ForceNetworkQualityEstimatorReportWifiAsSlow2G_Response;)V
.end method

.method public abstract getEnvironmentVariableValue(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkServiceTest$GetEnvironmentVariableValue_Response;)V
.end method

.method public abstract getLatestMemoryPressureLevel(Lorg/chromium/network/mojom/NetworkServiceTest$GetLatestMemoryPressureLevel_Response;)V
.end method

.method public abstract getPeerToPeerConnectionsCountChange(Lorg/chromium/network/mojom/NetworkServiceTest$GetPeerToPeerConnectionsCountChange_Response;)V
.end method

.method public abstract isHappyEyeballsV3Enabled(Lorg/chromium/network/mojom/NetworkServiceTest$IsHappyEyeballsV3Enabled_Response;)V
.end method

.method public abstract log(Ljava/lang/String;Lorg/chromium/network/mojom/NetworkServiceTest$Log_Response;)V
.end method

.method public abstract makeRequestToServer(Lorg/chromium/network/mojom/TransferableSocket;Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/NetworkServiceTest$MakeRequestToServer_Response;)V
.end method

.method public abstract mockCertVerifierAddResultForCertAndHost(Lorg/chromium/network/mojom/X509Certificate;Ljava/lang/String;Lorg/chromium/network/mojom/CertVerifyResult;ILorg/chromium/network/mojom/NetworkServiceTest$MockCertVerifierAddResultForCertAndHost_Response;)V
.end method

.method public abstract mockCertVerifierSetDefaultResult(ILorg/chromium/network/mojom/NetworkServiceTest$MockCertVerifierSetDefaultResult_Response;)V
.end method

.method public abstract openFile(Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/network/mojom/NetworkServiceTest$OpenFile_Response;)V
.end method

.method public abstract replaceSystemDnsConfig(Lorg/chromium/network/mojom/NetworkServiceTest$ReplaceSystemDnsConfig_Response;)V
.end method

.method public abstract resolveOwnHostnameWithSystemDns(Lorg/chromium/network/mojom/NetworkServiceTest$ResolveOwnHostnameWithSystemDns_Response;)V
.end method

.method public abstract setAllowNetworkAccessToHostResolutions(Lorg/chromium/network/mojom/NetworkServiceTest$SetAllowNetworkAccessToHostResolutions_Response;)V
.end method

.method public abstract setIPv6ProbeResult(ZLorg/chromium/network/mojom/NetworkServiceTest$SetIPv6ProbeResult_Response;)V
.end method

.method public abstract setSctAuditingRetryDelay(Lorg/chromium/mojo_base/mojom/TimeDelta;Lorg/chromium/network/mojom/NetworkServiceTest$SetSctAuditingRetryDelay_Response;)V
.end method

.method public abstract setTestDohConfig(ILorg/chromium/network/mojom/DnsOverHttpsConfig;Lorg/chromium/network/mojom/NetworkServiceTest$SetTestDohConfig_Response;)V
.end method

.method public abstract setTransportSecurityStateSource(SLorg/chromium/network/mojom/NetworkServiceTest$SetTransportSecurityStateSource_Response;)V
.end method

.method public abstract simulateCrash()V
.end method

.method public abstract simulateNetworkChange(ILorg/chromium/network/mojom/NetworkServiceTest$SimulateNetworkChange_Response;)V
.end method

.method public abstract simulateNetworkQualityChange(ILorg/chromium/network/mojom/NetworkServiceTest$SimulateNetworkQualityChange_Response;)V
.end method
