.class Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Permission;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Permission"
.end annotation


# instance fields
.field public final origin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

.field public final setting:I


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Permission;->origin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iput p2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappBridge$Permission;->setting:I

    return-void
.end method
