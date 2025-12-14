.class public interface abstract Lorg/chromium/device/mojom/Fingerprint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/Fingerprint$RequestType_Response;,
        Lorg/chromium/device/mojom/Fingerprint$DestroyAllRecords_Response;,
        Lorg/chromium/device/mojom/Fingerprint$EndCurrentAuthSession_Response;,
        Lorg/chromium/device/mojom/Fingerprint$RemoveRecord_Response;,
        Lorg/chromium/device/mojom/Fingerprint$SetRecordLabel_Response;,
        Lorg/chromium/device/mojom/Fingerprint$RequestRecordLabel_Response;,
        Lorg/chromium/device/mojom/Fingerprint$CancelCurrentEnrollSession_Response;,
        Lorg/chromium/device/mojom/Fingerprint$GetRecordsForUser_Response;,
        Lorg/chromium/device/mojom/Fingerprint$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addFingerprintObserver(Lorg/chromium/device/mojom/FingerprintObserver;)V
.end method

.method public abstract cancelCurrentEnrollSession(Lorg/chromium/device/mojom/Fingerprint$CancelCurrentEnrollSession_Response;)V
.end method

.method public abstract destroyAllRecords(Lorg/chromium/device/mojom/Fingerprint$DestroyAllRecords_Response;)V
.end method

.method public abstract endCurrentAuthSession(Lorg/chromium/device/mojom/Fingerprint$EndCurrentAuthSession_Response;)V
.end method

.method public abstract getRecordsForUser(Ljava/lang/String;Lorg/chromium/device/mojom/Fingerprint$GetRecordsForUser_Response;)V
.end method

.method public abstract removeRecord(Ljava/lang/String;Lorg/chromium/device/mojom/Fingerprint$RemoveRecord_Response;)V
.end method

.method public abstract requestRecordLabel(Ljava/lang/String;Lorg/chromium/device/mojom/Fingerprint$RequestRecordLabel_Response;)V
.end method

.method public abstract requestType(Lorg/chromium/device/mojom/Fingerprint$RequestType_Response;)V
.end method

.method public abstract setRecordLabel(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/device/mojom/Fingerprint$SetRecordLabel_Response;)V
.end method

.method public abstract startAuthSession()V
.end method

.method public abstract startEnrollSession(Ljava/lang/String;Ljava/lang/String;)V
.end method
