.class public final enum Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/ExtensionViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtensionViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

.field public static final enum EXTENSION_POPUP:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

.field public static final enum EXTENSION_SIDE_PANEL:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;


# direct methods
.method private static synthetic $values()[Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;->EXTENSION_POPUP:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    sget-object v1, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;->EXTENSION_SIDE_PANEL:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    filled-new-array {v0, v1}, [Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    const-string v1, "EXTENSION_POPUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;->EXTENSION_POPUP:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    new-instance v0, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    const-string v1, "EXTENSION_SIDE_PANEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;->EXTENSION_SIDE_PANEL:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;->$values()[Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;->$VALUES:[Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;
    .locals 1

    const-class v0, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    return-object p0
.end method

.method public static values()[Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;->$VALUES:[Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    invoke-virtual {v0}, [Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;

    return-object v0
.end method
