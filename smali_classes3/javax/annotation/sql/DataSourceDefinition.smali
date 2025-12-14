.class public interface abstract annotation Ljavax/annotation/sql/DataSourceDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/annotation/sql/DataSourceDefinition;
        databaseName = ""
        description = ""
        initialPoolSize = -0x1
        isolationLevel = -0x1
        loginTimeout = 0x0
        maxIdleTime = -0x1
        maxPoolSize = -0x1
        maxStatements = -0x1
        minPoolSize = -0x1
        password = ""
        portNumber = -0x1
        properties = {}
        serverName = "localhost"
        transactional = true
        url = ""
        user = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Ljavax/annotation/sql/DataSourceDefinitions;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation
