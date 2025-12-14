.class final Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;
.super LV0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrerenderedUrlParams"
.end annotation


# instance fields
.field private final extras:Landroid/os/Bundle;

.field private final referrer:Ljava/lang/String;

.field private final session:LH/y;

.field private final terrace:Lcom/sec/terrace/Terrace;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(LH/y;Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->session:LH/y;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->terrace:Lcom/sec/terrace/Terrace;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->referrer:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(LH/y;Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;-><init>(LH/y;Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->referrer:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)LH/y;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->session:LH/y;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->terrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->url:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic D()[Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->session:LH/y;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->terrace:Lcom/sec/terrace/Terrace;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->referrer:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->extras:Landroid/os/Bundle;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p0, v4, v0

    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->D()[Ljava/lang/Object;

    move-result-object p0

    check-cast p1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->D()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->D()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    const-class v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->D()[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "session;terrace;url;referrer;extras"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
