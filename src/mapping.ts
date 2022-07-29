import { NewGravatar} from '../generated/Gravity/Gravity'
import { Gravatar } from '../generated/schema'

export function handleNewGravatar(event: NewGravatar): void {
  let gravatar = new Gravatar(event.params.id.toHex())
  gravatar.owner = event.params.owner
  gravatar.operation1 = 1
  gravatar.receiver = event.params.receiver
  gravatar.operation2 = -1
  gravatar.money = event.params.money
  gravatar.save()
}


