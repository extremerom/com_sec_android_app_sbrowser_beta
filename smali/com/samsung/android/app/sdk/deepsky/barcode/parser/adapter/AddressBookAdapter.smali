.class public final Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ#\u0010\u0013\u001a\u00020\u0012*\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J#\u0010\u0015\u001a\u00020\u0012*\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J#\u0010\u0016\u001a\u00020\u0012*\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0011H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J#\u0010\u0017\u001a\u00020\u0012*\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0011H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\u000f\u0010\u0018\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u0015\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u001cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001fR\u0014\u0010 \u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;",
        "Landroid/content/Context;",
        "context",
        "LY7/d;",
        "addressBookParsedResult",
        "<init>",
        "(Landroid/content/Context;LY7/d;)V",
        "",
        "phoneNumber",
        "getContactBodyText",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "hasPhoneNumber",
        "()Z",
        "Ljava/util/ArrayList;",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;",
        "Lkotlin/collections/ArrayList;",
        "Ldb/r;",
        "addAddToContactActionIfPossible",
        "(Ljava/util/ArrayList;)V",
        "addContactCallActionIfPossible",
        "addContactMessageActionIfPossible",
        "addContactEmailActionIfPossible",
        "getTitle",
        "()Ljava/lang/String;",
        "getBody",
        "getBodyTts",
        "",
        "getActions",
        "()Ljava/util/List;",
        "LY7/d;",
        "appContext",
        "Landroid/content/Context;",
        "Companion",
        "deepsky-sdk-barcode-1.0.11_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final addressBookParsedResult:LY7/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final appContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LY7/d;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LY7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressBookParsedResult"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->appContext:Landroid/content/Context;

    return-void
.end method

.method private final addAddToContactActionIfPossible(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/AddToContactAction;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/AddToContactAction;-><init>(Landroid/content/Context;LY7/d;)V

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/AddToContactAction;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isLauncherActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private final addContactCallActionIfPossible(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/ContactCallAction;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/ContactCallAction;-><init>(Landroid/content/Context;LY7/d;Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;ILtb/f;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->appContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/ContactCallAction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isLauncherActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private final addContactEmailActionIfPossible(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    iget-object v0, v0, LY7/d;->i:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    aget-object v1, v0, v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/ContactEmailAction;

    iget-object v5, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->appContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/ContactEmailAction;-><init>(Landroid/content/Context;LY7/d;Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;ILtb/f;)V

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/ContactEmailAction;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isLauncherActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v3, v0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private final addContactMessageActionIfPossible(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/ContactMessageAction;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/ContactMessageAction;-><init>(Landroid/content/Context;LY7/d;Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;ILtb/f;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->appContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/contact/ContactMessageAction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isLauncherActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private final getContactBodyText(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    iget-object v0, v0, LY7/d;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    array-length v5, v0

    if-nez v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-nez v5, :cond_1

    aget-object v5, v0, v4

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    iget-object p0, p0, LY7/d;->i:[Ljava/lang/String;

    if-eqz p0, :cond_5

    array-length v5, p0

    if-nez v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    if-nez v5, :cond_4

    aget-object v5, p0, v4

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    move-object v1, p0

    :cond_4
    if-eqz v1, :cond_5

    aget-object p0, v1, v4

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move-object p0, v2

    :goto_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v4, "%s"

    const/4 v5, 0x2

    const-string v6, "%1$s\n%2$s"

    if-lez v1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v6, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_7

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v6, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v6, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_a

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_b

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v2
.end method

.method private final hasPhoneNumber()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    iget-object p0, p0, LY7/d;->g:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    aget-object p0, p0, v0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addAddToContactActionIfPossible(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addContactCallActionIfPossible(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addContactMessageActionIfPossible(Ljava/util/ArrayList;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addContactEmailActionIfPossible(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    iget-object v0, v0, LY7/d;->g:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    aget-object v1, v0, v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->getContactBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBodyTts()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->addressBookParsedResult:LY7/d;

    iget-object v0, v0, LY7/d;->g:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    aget-object v1, v0, v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/ParserUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/ParserUtil;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/ParserUtil;->getTtsOneDigitNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->getContactBodyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/AddressBookAdapter;->appContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/app/sdk/deepsky/barcode/R$string;->barcode_dialog_title_contact:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
