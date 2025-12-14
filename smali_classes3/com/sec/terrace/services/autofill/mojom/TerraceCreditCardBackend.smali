.class public interface abstract Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract addCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
.end method

.method public abstract clearCreditCards()V
.end method

.method public abstract getCreditCardStatusTable(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;)V
.end method

.method public abstract getCreditCards(ZLcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V
.end method

.method public abstract removeCreditCard(Ljava/lang/String;)V
.end method

.method public abstract setCreditCardStatus(Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;)V
.end method

.method public abstract updateCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
.end method
