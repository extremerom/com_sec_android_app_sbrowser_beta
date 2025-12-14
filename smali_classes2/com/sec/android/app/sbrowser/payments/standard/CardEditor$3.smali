.class Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorValueIconGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;ZLcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconResourceId(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->e(Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/Map;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getBasicCardIssuerNetwork(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;->icon:I

    return p0
.end method
