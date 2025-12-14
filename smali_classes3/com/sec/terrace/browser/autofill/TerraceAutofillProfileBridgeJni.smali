.class Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAddressUiComponents(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MVaa7XN2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultCountryCode()Ljava/lang/String;
    .locals 0

    invoke-static {}, LJ/N;->MqbWyGTU()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRequiredFields(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M7SDgFRF(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getSupportedCountries(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->McKS0BVC(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
