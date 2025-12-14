.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0080\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J5\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;",
        "",
        "itemId",
        "",
        "groupId",
        "title",
        "",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "<init>",
        "(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V",
        "getItemId",
        "()I",
        "getGroupId",
        "getTitle",
        "()Ljava/lang/String;",
        "getIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "hashCode",
        "equals",
        "",
        "o",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "toString",
        "Companion",
        "deepsky-sdk-objectcapture-8.5.4_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final groupId:I

.field private final icon:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final itemId:I

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao$Companion;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->itemId:I

    iput p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->groupId:I

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static final collectionEquals(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao$Companion;->collectionEquals(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;IILjava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->itemId:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->groupId:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->title:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->icon:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->copy(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;

    move-result-object p0

    return-object p0
.end method

.method public static final of(Landroid/view/MenuItem;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;
    .locals 1
    .param p0    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao$Companion;->of(Landroid/view/MenuItem;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->itemId:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->groupId:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final copy(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;-><init>(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->itemId:I

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;

    iget v3, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->itemId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->groupId:I

    iget v3, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->groupId:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getGroupId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->groupId:I

    return p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getItemId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->itemId:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->itemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->groupId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->title:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->icon:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->itemId:I

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->groupId:I

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->title:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/MenuItemDao;->icon:Landroid/graphics/drawable/Drawable;

    const-string v3, "MenuItemDao(itemId="

    const-string v4, ", groupId="

    const-string v5, ", title="

    invoke-static {v0, v1, v3, v4, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
