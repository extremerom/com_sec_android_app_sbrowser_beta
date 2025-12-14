.class public interface abstract Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$RemoveAutofillProfile_Response;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract addAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;)V
.end method

.method public abstract clearAutofillProfiles()V
.end method

.method public abstract getAutofillProfiles(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;)V
.end method

.method public abstract removeAutofillProfile(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$RemoveAutofillProfile_Response;)V
.end method

.method public abstract updateAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;)V
.end method
